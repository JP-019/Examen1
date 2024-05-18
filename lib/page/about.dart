import 'dart:convert';
import 'package:examen_1/models/libro.dart';
import 'package:examen_1/services/Services_json.dart';
import 'package:flutter/material.dart';
import '../models/libro.dart';
import '../services/Services_json.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
  late Future<List<Libro>> _librosFuture;

  @override
  void initState() {
    super.initState();
    _librosFuture = _fetchLibros();
  }

  Future<List<Libro>> _fetchLibros() async {
    try {
      // Obtener los libros del servicio
      return await LibroService().obtenerLibros();
    } catch (e) {
      // Manejar errores
      print('Error al obtener los libros: $e');
      throw Exception('Error al obtener los libros: $e');
    }
  }

  Widget _buildLibroCard(Libro libro) {
    return Card(
      child: ListTile(
        title: Text(libro.titulo),
        subtitle: Text('ISBN: ${libro.isbn} | Páginas: ${libro.paginas}'),
        leading: Icon(Icons.book),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(199, 0, 0, 0),
        title: const Text(
          'Libreria',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(197, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ), // Icono de suma
                SizedBox(width: 8), // Espacio entre los iconos
                Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Colors.white,
                ), // Icono de perfil
              ],
            ),
          ),
        ],
      ),
      body: Drawer(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        width: double.infinity,
        child: FutureBuilder<List<Libro>>(
          future: _librosFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final List<Libro> libros = snapshot.data!;
              return ListView.builder(
                itemCount: libros.length,
                itemBuilder: (context, index) {
                  final Libro libro = libros[index];
                  return _buildLibroCard(libro);
                },
              );
            }
          },
        ),
      ),
    );
  }
}

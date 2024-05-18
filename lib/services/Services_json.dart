import 'dart:convert';
import 'dart:io';
import '../models/libro.dart';

class LibroService {
  final String _dataPath =
      'lib/assets/data.json'; // Actualizar la ruta del archivo JSON

  Future<List<Libro>> obtenerLibros() async {
    try {
      // Lee el contenido del archivo JSON
      String jsonDataString = await _leerArchivoJson();

      // Convierte el JSON en un objeto de Dart
      final jsonData = json.decode(jsonDataString);

      // Extrae la lista de libros del objeto JSON
      final List<dynamic> datosLibros = jsonData['libros'];

      // Comprueba si se encontraron libros
      if (datosLibros.isNotEmpty) {
        return datosLibros.map((libro) => Libro.fromJson(libro)).toList();
      } else {
        throw Exception('No se encontraron libros');
      }
    } catch (e) {
      print('Error al obtener libros: $e');
      throw Exception('Error al obtener libros: $e');
    }
  }

  Future<String> _leerArchivoJson() async {
    try {
      // Lee el contenido del archivo JSON
      String jsonDataString = await File(_dataPath).readAsString();
      return jsonDataString;
    } catch (e) {
      throw Exception('Error al leer el archivo JSON: $e');
    }
  }
}

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
  Widget _buildExampleCards() {
    // Aquí puedes construir las tarjetas de ejemplo
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text('Ejemplo 1'),
            subtitle: Text('Descripción del ejemplo 1'),
            leading: Icon(Icons.star),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Ejemplo 2'),
            subtitle: Text('Descripción del ejemplo 2'),
            leading: Icon(Icons.star),
          ),
        ),
        // Puedes agregar más tarjetas aquí según sea necesario
      ],
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
        child: ListView(
          children: [
            ListTile(
              tileColor: Color.fromARGB(255, 51, 71, 59),
              title: const Text(
                'Por Defecto',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                // Mostrar las tarjetas de ejemplo cuando se toque el elemento "Por Defecto"
                showModalBottomSheet(
                  context: context,
                  builder: (context) => _buildExampleCards(),
                );
              },
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 51, 71, 59),
              title: const Text(
                'Favoritos',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

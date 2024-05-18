import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Content Example'),
      ),
      body: Column(
        children: [
          Drawer(
            backgroundColor: Color.fromARGB(255, 37, 37, 37),
            width: double.infinity,
            child: ListView(children: [
              ListTile(
                tileColor: Color.fromARGB(255, 51, 71, 59),
                title: const Text(
                  'Por Defecto',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 51, 71, 59),
                title: const Text(
                  'Favoritos',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

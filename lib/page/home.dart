import 'package:examen_1/compontes/bnt.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(198, 243, 238, 238),
        title: const Text(
          'pagina Principal',
          style: TextStyle(fontSize: 24, color: Color.fromARGB(199, 0, 0, 0)),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const Text(
                'Bievenidos a el examen',
                style: TextStyle(fontSize: 14),
              ),
              MyButton(
                text: 'tocar',
                onPressed: () {
                  context.go('/About');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

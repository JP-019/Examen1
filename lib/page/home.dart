import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../compontes/bnt.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 224, 140),
      appBar: AppBar(
        title: const Text(
          'Página Principal',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(199, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/1/1c/Logo_UNITEC.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bienvenidos al examen',
                  style: TextStyle(fontSize: 50),
                ),
                const SizedBox(height: 10),
                MyButton(
                  onPressed: () {
                    context.go('/About');
                  },
                  text: 'Tocar',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

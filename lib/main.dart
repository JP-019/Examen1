import 'package:flutter/material.dart';
import 'src/routes.dart';

//no se ocupa importar el router.go aca porque ya viene importadod desde routes.dart
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App con routing',
      routerConfig: router, // Usa 'router' definido en 'routes.dart'
    );
  }
}

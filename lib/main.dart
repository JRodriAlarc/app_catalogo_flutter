import 'package:flutter/material.dart';
import 'conexion-firebase.dart';
import 'splash_screen.dart';

void main() {
  runApp(const AppCatalogo());
}

class AppCatalogo extends StatelessWidget {
  const AppCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalogo',
      home: new SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Elimina 'const' aquí
        child: Image.asset('assets/images/Contenidos.png'),
      ),
    );
  }
}

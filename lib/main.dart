import 'package:flutter/material.dart';
import 'home_screen.dart'; // Importe as telas necessárias

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro e Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Defina a tela inicial como a HomeScreen
    );
  }
}

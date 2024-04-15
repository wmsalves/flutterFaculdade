import 'package:flutter/material.dart';
import 'package:tela_cadastro/home_screen.dart';
import 'package:tela_cadastro/itemlist_screen.dart';
import 'package:tela_cadastro/login_screen.dart';
import 'package:tela_cadastro/register_screen.dart';
import 'package:tela_cadastro/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Aplicação',
      initialRoute: Rotas.home, // Rota inicial
      routes: Rotas.routes, // Maps para arquivo routes.dart
    );
  }
}

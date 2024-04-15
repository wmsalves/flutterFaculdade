import "package:flutter/material.dart";
import "package:tela_cadastro/home_screen.dart";
import "package:tela_cadastro/itemlist_screen.dart";
import "package:tela_cadastro/login_screen.dart";
import "package:tela_cadastro/register_screen.dart";


class Rotas {
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String mypage = '/mypage';
  static const String itemlist = '/itemlist';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    register: (context) => RegisterForm(),
    login: (context) => LoginScreen(),
    itemlist: (context) => ItemListPage(nome: 'Wemerson',),
  };
}

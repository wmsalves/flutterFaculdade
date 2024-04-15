import 'package:flutter/material.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // Controladores para os campos
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Digite seu e-mail e senha',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController, // Controlador para e-mail
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextField(
              controller: passwordController, // Controlador para senha
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = 'eu@gmail.com';
                String password = '1234';
                String enteredEmail = emailController.text; // Recuperar e-mail
                String enteredPassword = passwordController.text; // Recuperar senha

                if (enteredEmail != email || enteredPassword != password) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Dados inválidos'),
                        content: Text('Usuário e/ou senha incorreto(a)'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  Navigator.pushNamed(context, '/itemlist');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

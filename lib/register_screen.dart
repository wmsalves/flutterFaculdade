import 'package:flutter/material.dart';
import 'package:tela_cadastro/home_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an account'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  DateTime? _dob;
  String? _email;
  String? _password;
  String? _gender;
  bool _receiveEmailNotifications = false;
  bool _receiveSMSNotifications = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, digite o seu nome';
              }
              return null;
            },
            onSaved: (value) => _name = value,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Data de Nascimento'),
            keyboardType: TextInputType.datetime,
            validator: (value) {
              return null;
            },
            onSaved: (value) {
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Telefone'),
            maxLength: 15,
            keyboardType: TextInputType.phone,
            validator: (value) {
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'E-mail'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              return null;
            },
            onSaved: (value) => _email = value,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Senha'),
            maxLength: 20,
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_showPassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, digite a sua senha';
              }
              return null;
            },
            onSaved: (value) => _password = value,
          ),
          Row(
            children: <Widget>[
              Text('Mostrar senha'),
              Switch(
                value: _showPassword,
                onChanged: (value) {
                  setState(() {
                    _showPassword = value;
                  });
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Gênero'),
              Checkbox(
                value: _gender == 'Masculino',
                onChanged: (value) {
                  setState(() {
                    _gender = value! ? 'Masculino' : null;
                  });
                },
              ),
              Text('Masculino'),
              Checkbox(
                value: _gender == 'Feminino',
                onChanged: (value) {
                  setState(() {
                    _gender = value! ? 'Feminino' : null;
                  });
                },
              ),
              Text('Feminino'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Receber notificações por e-mail'),
              Switch(
                value: _receiveEmailNotifications,
                onChanged: (value) {
                  setState(() {
                    _receiveEmailNotifications = value;
                  });
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Receber notificações por SMS'),
              Switch(
                value: _receiveSMSNotifications,
                onChanged: (value) {
                  setState(() {
                    _receiveSMSNotifications = value;
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Cadastro realizado com sucesso!'),
                    ),
                  );
                }
              },
              child: Text('Cadastrar'),
            ),
          ),
        ],
      ),
    );
  }
}

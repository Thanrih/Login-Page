import 'package:flutter/material.dart';
import 'login.dart'; // Importando o arquivo login.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Usando a classe LoginPage como tela inicial
    );
  }
}

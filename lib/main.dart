import 'package:flutter/material.dart';
import 'package:gerenciador/views_telas/cadastro/cadastro.dart';
import 'package:gerenciador/views_telas/listagem/listagem.dart';
import 'package:gerenciador/views_telas/login/login.dart';
import 'package:gerenciador/views_telas/register/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/cadastro',
       routes: {
        '/login': (_) => const Login(),
        '/register': (_) => const Register(),
        '/listagem': (_) => const Listagem(),
        '/cadastro': (_) => const Cadastro()
       },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gerenciador/repository/registro_repository.dart';
import 'package:gerenciador/store/registro_store.dart';
import 'package:gerenciador/theme.dart';
import 'package:gerenciador/views_telas/cadastro/cadastro.dart';
import 'package:gerenciador/views_telas/listagem/listagem.dart';
import 'package:gerenciador/views_telas/login/login.dart';
import 'package:gerenciador/views_telas/register/register.dart';
import 'package:gerenciador/views_telas/transporte/transporte.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RegistroStore>(
          create: (_) => RegistroStore(),
        ),
        Provider(
          create: (_) => RegistroRepository(),
        )
      ],
      child: MaterialApp(
        title: "Gerenciador de Finanças",
        debugShowCheckedModeBanner: false,
        theme: MaterialTheme(Theme.of(context).textTheme).light(), 
        darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
        initialRoute: '/login',
        routes: {
          '/login': (_) => Login(),
          '/register': (_) => Register(),
          '/listagem': (_) => const Listagem(),
          '/cadastro': (_) => Cadastro(),
          '/transporte': (_) => const Transporte()
        },
      ),
    );
  }
}
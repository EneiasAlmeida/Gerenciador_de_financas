import 'package:flutter/material.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';


class Login extends StatelessWidget {
  const Login({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem Vindo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CampoTextoPersonalizado(
              label: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            CampoTextoPersonalizado(
              label: 'Senha',
              inputType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            FilledButton(
              onPressed: null, 
              child: Text('Entrar'),
            ),
          ],

        ),
      ),
    );
  }
}


import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';


class Login extends StatelessWidget {
  Login({super.key}); 

  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem Vindo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),      //Cria inserções onde todos os deslocamentos são valores
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  //Cria uma matriz vertical de filhos.
            children: [
              CampoTextoPersonalizado(
                controller: _emailController,
                label: 'Email',
                inputType: TextInputType.emailAddress, 
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Email inválido!';
                  }
                  return null; // Tudo OK
                },
                //Tipo de entrada de texto
              ),
              CampoTextoPersonalizado(
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!'; 
                  }
                  return null; //Tudo ok
                },                
                isPassword: true,
              ),
              FilledButton(    //Botão preenchido  - fill=preencher
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                      //logar o usuário
                    }
                }, 
                child: const Text('Entrar'),
              ),
            ],
          )
        ),
      ),
    );
  }
}


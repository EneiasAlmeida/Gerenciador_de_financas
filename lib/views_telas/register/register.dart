import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';

class Register extends StatelessWidget {
  Register({super.key}); 

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem Vindo',
          style: TextStyle(
          fontWeight: FontWeight.bold, // Define o texto em negrito
          fontSize: 20, // Define a fonte
      ),       
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              CampoTextoPersonalizado(
                controller: _passwordController,//controller é a propriedade
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                validator: (value) {
                  //validator vai rodara função- o valor é nulo?-  tem menos que 8 caracteres? se sim  vai retornar  senha invalida
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!'; 
                  }
                  return null; //Tudo ok
                },

                isPassword: true
              ),
              CampoTextoPersonalizado(
                label: 'Confirmar Senha',
                inputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!';
                  } else if (value != _passwordController.text) {
                    return 'As senhas não coincidem!';
                  }
                  return null;
                },
                isPassword: true
              ),
              FilledButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    //registrar o usuário
                    Navigator.pushNamed(context, '/login');
                  }
                }, 
                style: ButtonStyle(                   //Estilo do botão
                  backgroundColor: WidgetStateProperty.all<Color>( // backgroundColor=Cor de fundo
                    Theme.of(context).colorScheme.primary 
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(  // foregroundColor=cor do primeiro plano
                    Theme.of(context).colorScheme.onPrimary // Cor do texto preta
                  ),
                ),
                child: const Text('Registrar-se'),
              ),
            ],
         ),
        )  
      ),
    );
  }
}


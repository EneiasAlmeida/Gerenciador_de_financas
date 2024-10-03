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
        //Cria inserções onde todos os deslocamentos são valores
        padding: const EdgeInsets.all(16),      
        child: Form(
          key: _formKey,
          child: Column(
            //Cria uma matriz vertical de filhos.
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
                      // Logar o usuário
                      Navigator.pushNamed(context, '/listagem');
                    }
                }, 
                style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 11, 12, 11), // Cor de fundo verde
                ),
                foregroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 246, 243, 243), // Cor do texto preta
                ),
              ),
              child: const Text('Entrar'),
              ),
              //Botão preenchido  - fill=preencher
              FilledButton(    
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }, 
                style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 11, 12, 11), // Cor de fundo verde
                ),
                foregroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 246, 243, 243), // Cor do texto preta
                ),
              ),
              child: const Text('Registre-se'),
              ),
            ],
          )
        ),
      ),
    );
  }
}


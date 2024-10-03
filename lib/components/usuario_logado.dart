import 'package:flutter/material.dart';

class UsuarioLogado extends StatelessWidget {
  const UsuarioLogado({super.key});

 @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // sempre que abrir colchetes indica que é uma lista
      children: [
        FilledButton( 
          //colocar margin no row 
          onPressed: () {
            // Deslogar o usuário  
            Navigator.pushNamed(context, '/login');      
          }, 
          child: const Text('Sair')
        )
      ]    
    ); 
  }    
}
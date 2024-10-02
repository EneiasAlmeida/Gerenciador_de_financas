import 'package:flutter/material.dart';


class UsuarioLogado extends StatelessWidget {

  const UsuarioLogado({super.key});

 @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [// sempre que abrir colchetes indica que é uma lista
          const Text('Enéias'),
          FilledButton( 
            //colocar margin no row 
            onPressed: () {        
            }, 
            child: const Text('Sair')
          )
      ]    
    ); 
  }    
}
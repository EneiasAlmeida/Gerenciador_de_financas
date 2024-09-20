import 'package:flutter/material.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Registro'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CampoTextoPersonalizado(
              label: 'Nome',
              inputType: TextInputType.text,
            ),
            CampoTextoPersonalizado(
              label: 'Valor',
              inputType: TextInputType.text,
              isPassword: true,
            ),
            CampoTextoPersonalizado(
              label: 'Categoria',
              inputType: TextInputType.text,
              isPassword: true,
            ),
            CampoTextoPersonalizado(
              label: 'Tipo',
              inputType: TextInputType.text,
              isPassword: true,
            ),
            FilledButton(
              onPressed: null, 
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}


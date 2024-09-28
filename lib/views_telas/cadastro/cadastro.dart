import 'package:flutter/material.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';

class Cadastro extends StatelessWidget {
  Cadastro({super.key}); 

  final _nomeController = TextEditingController();
  final _valorController = TextEditingController();
  final _categoriaController = TextEditingController();
  final _tipoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Registro'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,//key=propriedade - _formKey = valor
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoTextoPersonalizado(   //aqui comeca ser executado o construtor de Campo Texto Personalizado
                controller: _nomeController,
                label: 'Nome',
                inputType: TextInputType.text,
                validator: (value) { 
                  if (value == null || value.isEmpty){
                    return 'Nome inválido!';
                  }
                  return null;
                },
              ),
              CampoTextoPersonalizado(
                controller: _valorController,
                label: 'Valor',
                inputType: TextInputType.number,
                validator: (value) { 
                  if (value == null || value.isEmpty){
                    return 'Valor inválido!';
                  }
                  return null;
                },             
                onlyNumbers: true
              ),
              CampoTextoPersonalizado(
                controller: _categoriaController,
                label: 'Categoria',
                inputType: TextInputType.text,
                validator: (value) { 
                  if (value == null || value.isEmpty){
                    return 'Categoria inválida!';
                  }
                  return null;
                },
              ),
              CampoTextoPersonalizado(
                controller: _tipoController,
                label: 'Tipo',
                inputType: TextInputType.text,
                validator: (value) { 
                  if (value == null || value.isEmpty){
                    return 'Tipo inválido!';
                  }
                  return null;
                },
              ),
              FilledButton(
                onPressed: () {
                    if(_formKey.currentState!.validate()){
                      //cadastrar um registro
                    }
                  },  
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        )
      ),
    );
  }
}


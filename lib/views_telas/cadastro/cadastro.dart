// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:gerenciador/models/registro.dart';
import 'package:gerenciador/repository/registro_repository.dart';
import 'package:gerenciador/shared/campo_texto_personalizado.dart';
import 'package:gerenciador/store/registro_store.dart';
import 'package:provider/provider.dart';

class Cadastro extends StatelessWidget {
  Cadastro({super.key}); 

  final _nomeController = TextEditingController();
  final _valorController = TextEditingController();
  final _categoriaController = TextEditingController();
  final _tipoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    final registroStore = Provider.of<RegistroStore>(context);
    final repository = Provider.of<RegistroRepository>(context);

    final registroExistente = ModalRoute.of(context)!.settings.arguments as Registro?;
    final ehEdicao = registroExistente != null; // != Não é null ou é diferente de null
    
    //Quando for edição vai vir os campos preenchidos com os valores do registro
    if (ehEdicao) {
      _nomeController.text = registroExistente.nome;
      _valorController.text = registroExistente.valor.toString();
      _categoriaController.text = registroExistente.categoria;
      _tipoController.text = registroExistente.tipo;    
    } 

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
               const SizedBox(height: 16), // Espaço entre os campos e os botões
              FilledButton(
                onPressed: () async{
                  if(_formKey.currentState!.validate()){
                    Registro registro = Registro(   //vai criar um objeto com os valores preenchidos
                      id: ehEdicao ? registroExistente.id : null,
                      nome: _nomeController.text,
                      valor: double.parse(_valorController.text), // ométodo parse esta transformando  a string num double
                      categoria: _categoriaController.text,
                      tipo: _tipoController.text
                    );

                    if (ehEdicao){ 
                      // Edição
                      registro.id = await repository.update(registro.toMap());  // se for edição vai atualizar o registro no banco
                    }
                    else{
                      // Cadastro
                      //se for cadastro vai inserir o registro no banco
                      registro.id = await repository.insert(registro.toMap());  
                      registroStore.add(registro);
                    }

                    if (registro.id! > 0){
                      
                      Navigator.pushNamed(context, '/listagem');  //vai voltar para a listagem 
                    }              
                  } 
                },   
                child: const Text('Cadastrar')
              ),
               const SizedBox(height: 16), // Espaço entre os botões
              FilledButton(
                onPressed: () {     //onPressed é uma propriedade
                  Navigator.pushNamed(context, '/listagem');
                },  
                child: const Text('Cancelar')
              )  
            ],
          ),
        )
      ),
    );
  }
}


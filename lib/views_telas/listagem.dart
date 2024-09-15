import 'package:flutter/material.dart';
import 'package:gerenciador/components/registro_tile_bloco.dart';
import 'package:gerenciador/data/objeto_dados.dart';

class Listagem extends StatelessWidget {
  const Listagem({super.key});

  @override
  Widget build(BuildContext context) {
    const lista = {...dados};
    //const lista = [dados];

    //Widget metodo(BuildContext ctx, int i) {}
    //(BuildContext ctx, int i) => {}

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: const Color(0x00000000),
         
        title: const Text('Gerenciador de Finanças'),
        centerTitle: true,
        
        
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (ctx, indice) => RegistroTileBloco(registro: lista.values.elementAt(indice))
      ),

    );
  }
}

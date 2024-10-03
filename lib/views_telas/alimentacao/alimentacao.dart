import 'package:flutter/material.dart';  //import 'package:flutter/material.dart';
import 'package:gerenciador/components/registro_tile_bloco.dart';
import 'package:gerenciador/data/objeto_dados.dart';


class Alimentacao extends StatelessWidget {
  const Alimentacao({super.key});
  
  get somaValores => null;

  @override
  Widget build(BuildContext context) {                   //o buid é um médodo- tudo que estiver dentro da chave (roxa) esta dentro do método
    //Filtrando os registros cuja categoria seja "Alimentação"
    final listaAlimentacao = dados.where((registro) {     // where= onde tb é um método-serve para filtrar  dados em uma lista e trazer 
      return registro.categoria == 'Alimentacao'; // Verifica se a categoria é "Transporte"
    }).toList();
      
      return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alimentacao'),
        centerTitle: true, 
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),  // Espaço nas laterais
        child: Column(
          children: [
            Expanded( // O ListView precisa estar dentro de um Expanded para não causar overflow
              child: ListView.builder(
                itemCount: listaAlimentacao.length, // Usa a lista filtrada de transporte
                itemBuilder: (ctx, indice) => RegistroTileBloco(
                  registro: listaAlimentacao[indice], // Mostra apenas os itens filtrados
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha os botões
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Exibe a soma em um SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Soma total: R\$ ${somaValores.toStringAsFixed(2)}'),
                      ),
                    );
                  },
                  child: const Text('Somar Valores'),
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastro');
                  },
                )
              ],
            )
          ]
        ),
      ),  
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gerenciador/components/registro_tile_bloco.dart';
import 'package:gerenciador/data/objeto_dados.dart';

class Transporte extends StatelessWidget {
  const Transporte({super.key});// este é o construtor da classe- o construtor sempre tem o mesmo nome da classe
  
  @override
  Widget build(BuildContext context) {
    // Filtrando os registros cuja categoria seja "Transporte"
    final listaTransporte = dados.values.where((registro) {
      return registro.categoria == 'Transporte'; // Verifica se a categoria é "Transporte"
    }).toList();
     final somaValores = listaTransporte.fold(0.0, (sum, item) => sum + item.valor);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Transportes'),
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
                itemCount: listaTransporte.length, // Usa a lista filtrada de transporte
                itemBuilder: (ctx, indice) => RegistroTileBloco(
                  registro: listaTransporte[indice], // Mostra apenas os itens filtrados
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

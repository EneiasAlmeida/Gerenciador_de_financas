import 'package:flutter/material.dart';
import 'package:gerenciador/components/registro_tile_bloco.dart';
import 'package:gerenciador/components/usuario_logado.dart';
import 'package:gerenciador/models/registro.dart';
import 'package:gerenciador/repository/registro_repository.dart';
import 'package:gerenciador/store/registro_store.dart';
import 'package:provider/provider.dart';

class Listagem extends StatelessWidget {
  const Listagem({super.key});

  @override
  Widget build(BuildContext context) {
    final registroStore = Provider.of<RegistroStore>(context);
    final repository = Provider.of<RegistroRepository>(context);

    //List<Registro> lista = [];
    //const lista = {...dados};
    //const lista = [dados];

    //Widget metodo(BuildContext ctx, int i) {}
    //(BuildContext ctx, int i) => {}

    // Calcula as somas de despesas e receitas
    double totalDespesas = 0;
    double totalReceitas = 0;

    for (var registro in registroStore.registros) {
      if (registro.tipo == 'despesa') {
        totalDespesas += registro.valor; //Supondo que o 'valor' seja um a propriedade do registro
      } else if (registro.tipo == 'receita') {
          totalReceitas += registro.valor;
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),         
        title: const Text('Gerenciador de Finanças'),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall,
        actions: const [
          UsuarioLogado()
        ]
        //centerTitle: true, 
      ),
      
      body: FutureBuilder<List<Registro>>(
        future: repository.findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } 

          if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } 

          if (snapshot.hasData) {
            registroStore.load(snapshot.data!);
          }

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 15.0
            ),  // Espaço nas laterais
            child: Column(
              children: [
                Expanded( // O ListView precisa estar dentro de um Expanded para não causar overflow
                  child: ListView.builder(
                    itemCount: registroStore.registros.length,
                    itemBuilder: (ctx, indice) => RegistroTileBloco(
                      registro: registroStore.registros[indice]
                    ),
                  ),
                ),
                //Adiciona a linha com as somas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Cor de fundo vermelha
                          ),
                          onPressed: () {
                            //Ação das despesas se necessário
                          },
                          icon: const Icon(Icons.remove), //Ícone de despesa
                          label: Text('Despesas: R\$ ${totalDespesas.toStringAsFixed(2)}'), 
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left:10),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Cor de fundo verde
                          ),
                          onPressed: () {
                            //Ação das receitas se necessário
                          },
                          icon: const Icon(Icons.add), //Ícone de receita
                          label: Text('Receitas: R\$ ${totalReceitas.toStringAsFixed(2)}'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10), // Espaços entre o botao eo FAB
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: (){
                        Navigator.pushNamed(context, '/cadastro');
                      }
                    )
                  ]
                )
              ]
            )
          );
        }
      )
    );
  }
}

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

    // Calcula as somas de despesas e receitas
    double totalDespesas = 0;
    double totalReceitas = 0;

    for (var registro in registroStore.registros) {
      if (registro.tipo == 'despesa') {
        totalDespesas += registro.valor;
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
        actions: const [UsuarioLogado()],
      ),
      body: FutureBuilder<List<Registro>>(
        // Carregar os registros do repositório
        future: repository.findAll(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          }

          // Se os dados do snapshot forem válidos, carregamos no registroStore
          if (snapshot.hasData) {
            registroStore.load(snapshot.data!);
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: registroStore.registros.length,
                    itemBuilder: (ctx, indice) => RegistroTileBloco(
                      registro: registroStore.registros[indice],
                    ),
                  ),
                ),
                // Adiciona a linha com as somas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.remove),
                          label: Text('Despesas: R\$ ${totalDespesas.toStringAsFixed(2)}'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          label: Text('Receitas: R\$ ${totalReceitas.toStringAsFixed(2)}'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () async {
                        final result = await Navigator.of(context).pushNamed("/cadastro");
                        if (result == true) {
                          // Recarregar os registros após retorno da tela de cadastro
                          final updatedRecords = await repository.findAll();
                          registroStore.load(updatedRecords);
                        }
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

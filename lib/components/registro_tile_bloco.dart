import 'package:flutter/material.dart';
import 'package:gerenciador/models/registro.dart';
import 'package:gerenciador/repository/registro_repository.dart';
import 'package:gerenciador/store/registro_store.dart';
import 'package:provider/provider.dart';

class RegistroTileBloco extends StatelessWidget {
  final Registro registro;

  const RegistroTileBloco({super.key, required this.registro});

  // if () { }  else {}   == ( quer dizer tem o item despesa? e o : se não)
  //operador ternário
  // if (numero > 2)

  @override
  Widget build(BuildContext context) {
    final registroStore = Provider.of<RegistroStore>(context);
    final repository = Provider.of<RegistroRepository>(context);

    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 8.0), // Espaço entre os registros
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0), // Borda cinza
        borderRadius: BorderRadius.circular(12.0), // Bordas arredondadas
        color: registro.tipo == 'Despesa'
            ? const Color.fromARGB(255, 215, 130, 130)
            : const Color.fromARGB(255, 132, 218, 136), // Cor de fundo
      ),
      child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 3.0), // Padding dentro do ListTile
          title: Text(
              registro.nome), //Jantar  no restaurante,salario,gasolina-titulo
          subtitle: Column(
            // tem o valor e a categoria dentro
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Valor: R\$ ${registro.valor.toStringAsFixed(2)}'),
              const SizedBox(
                  height: 4), // Espaço entre o subtítulo e o texto adicional
              Text('Categoria: ${registro.categoria}'),
              //
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      "/cadastro", 
                      arguments: registro
                    );
                  }),
              IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () async {
                    await repository.delete(registro.id!);
                    registroStore.remove(registro.id!);

                    // Recarrega a lista
                    //registroStore.load(await repository.findAll());
                  })
            ],
          )),
    );
  }
}

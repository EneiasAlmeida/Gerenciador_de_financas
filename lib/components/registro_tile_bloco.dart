import 'package:flutter/material.dart';
import 'package:gerenciador/models/registro.dart';

class RegistroTileBloco extends StatelessWidget {
  final Registro registro;

  const RegistroTileBloco({
    super.key,
    required this.registro
  });

 // if () { }  else {}   == ( quer dizer tem o item despesa? e o : se não)
  //operador ternário
  // if (numero > 2)
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),  // Espaço nas laterais
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),  // Espaço entre os registros
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),  // Borda cinza
          borderRadius: BorderRadius.circular(12.0),  // Bordas arredondadas
          color: registro.tipo == 'Despesa' ? Colors.red.shade300 : Colors.green.shade300,  // Cor de fundo
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0), // Padding dentro do ListTile
          title: Text(registro.nome),          
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Valor: R\$ ${registro.valor.toStringAsFixed(2)}'),
              const SizedBox(height: 4), // Espaço entre o subtítulo e o texto adicional
              Text('Categoria: ${registro.categoria}'),
            ],
          ),
        ),
      ),
    );
  }
}

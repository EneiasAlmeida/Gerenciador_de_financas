import 'package:gerenciador/models/registro.dart';

const dados = {
  '1': const Registro(
    id: 1, 
    nome: 'Jantar no restaurante', 
    valor: 89.50, 
    area: 'Alimentação', 
    tipo: 'Despesa'
  ),
  '2': const Registro(
    id: 2, 
    nome: 'Salario', 
    valor: 3000.00, 
    area: 'Salário', 
    tipo: 'Receita'
  ),
  '3': const Registro(
    id: 3, 
    nome: 'Gasolina', 
    valor: 150.00, 
    area: 'Transporte', 
    tipo: 'Despesa'  
  ),
  '4': const Registro(
    id: 4, 
    nome: 'Compra de frutas', 
    valor: 60.00, 
    area: 'Alimentação', 
    tipo: 'Despesa'
  )
};
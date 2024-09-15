import 'package:gerenciador/models/registro.dart';

const dados = {
  '1': const Registro(
    id: 1, 
    nome: 'Jantar no restaurante', 
    valor: 89.50, 
    categoria: 'Alimentação', 
    tipo: 'Despesa'
  ),
  '2': const Registro(
    id: 2, 
    nome: 'Salario', 
    valor: 3000.00, 
    categoria: 'Salário', 
    tipo: 'Receita'
  ),
  '3': const Registro(
    id: 3, 
    nome: 'Gasolina', 
    valor: 150.00, 
    categoria: 'Transporte', 
    tipo: 'Despesa'  
  ),
  '4': const Registro(
    id: 4, 
    nome: 'Compra de frutas', 
    valor: 60.00, 
    categoria: 'Alimentação', 
    tipo: 'Despesa'
  ),   
  '5': const Registro(
    id: 5, 
    nome: 'Comissão', 
    valor: 60.00, 
    categoria: 'Extra', 
    tipo: 'Receita'
  )
};
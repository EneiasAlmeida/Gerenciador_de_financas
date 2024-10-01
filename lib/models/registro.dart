class Registro {
  final int id;
  final String nome;
  final double valor;
  final String categoria;
  final String tipo;

  const Registro({
    required this.id,
    required this.nome,
    required this.valor,
    required this.categoria,
    required this.tipo
  });

  Map<String, Object?> toMap() {// Convertendo um objeto para map
    return {
      'id': id,
      'nome': nome,
      'valor': valor,
      'categoria': categoria,
      'tipo': tipo  
    };
  }
  factory Registro.fromMap(Map<String, Object?> map) => //  convertendo um map para objeto
  Registro(
    id: map['id'] as int,
    nome: map['nome'] as String,
    valor: map['valor'] as double,
    categoria: map['categoria'] as String,
    tipo: map['tipo'] as String
  ); 
}
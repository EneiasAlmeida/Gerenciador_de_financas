import 'package:gerenciador/models/registro.dart';
import 'package:gerenciador/repository/db_helper.dart';

class RegistroRepository {
  static const _tableName = 'registro';//registro é o nome da tabela
  
  Future<int> insert(Map<String, Object?> map) async {//insert= inserir um registro na tabela do BD  --
    final db = await DBHelper.getInstancia();
    return await db.insert(_tableName, map);
  }

  // findAll= encontre todos-esse é um método/função
  Future<List<Registro>> findAll() async{ 
    final db = await DBHelper.getInstancia();
    final result = await db.query(
      _tableName,
      orderBy: 'nome', // name (asc) vai tazer ascendente- ou name desc( vai trazer de Z para A)  
    );

    //aqui o map é coleção e não mapa 
    return result.map((item)=>Registro.fromMap(item)).toList();
  }

  Future<int> delete(int id) async{
    final db = await DBHelper.getInstancia();
    return await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id] //quero excluir o id que for passado na linha 27 ?
    );   
  } 
  
  Future<int> update(Map<String, Object?> registroAtualizado) async{
    final db = await DBHelper.getInstancia();
    return await db.update(
      _tableName,
      registroAtualizado,
      where: 'id = ?',
      whereArgs: [registroAtualizado['id']] 
    );
  }

  Future<Map<String, Object?>> getRegistro(int id) async{
    final db = await DBHelper.getInstancia(); 
    final result = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id]
    );
    return result.first; 
  } 
}

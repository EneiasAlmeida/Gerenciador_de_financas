import 'package:gerenciador/models/registro.dart';
import 'package:gerenciador/repository/db_helper.dart';

class RegistroRepository {
  static const _tableName = 'registro';//registro é o nome da tabela
  
  static Future<int> insert(Map<String, Object?> map) async {//insert= inserir um registro na tabela do BD  --
    final db = await DBHelper.getInstancia();
    return await db.insert(_tableName, map);
  }

  static Future<List<Registro>> findAll(int idUsuario) async{ //findAll= encontre todos-esse é um método/função
    final db = await DBHelper.getInstancia();
    final result = await db.query(
      _tableName,
      where: 'idUsuario = ?',
      whereArgs: [idUsuario],
      orderBy: 'name', // name (asc)vai tazer ascendente- ou name desc( vai trazer de Z para A)  
    );
    return result.map((item)=>Registro.fromMap(item)).toList();
    //aqui o map é coleção e não mapa 
  }

  static Future<int> delete(int id) async{
    final db = await DBHelper.getInstancia();
    return await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id] //quero excluir o id que for passado na linha 27 ?
    );   
  } 
  
  static Future<int> update(Map<String, Object?> registroAtualizado) async{
    final db = await DBHelper.getInstancia();
    return await db.update(
      _tableName,
      registroAtualizado,
      where: 'id = ?',
      whereArgs: [registroAtualizado['id']] 
    );
  }

  static Future<Map<String, Object?>> getRegistro(int id) async{
    final db = await DBHelper.getInstancia(); 
    final result = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id]
    );
    return result.first; 
  } 
}

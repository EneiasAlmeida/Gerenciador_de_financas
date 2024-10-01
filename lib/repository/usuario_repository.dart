import 'package:gerenciador/repository/db_helper.dart';

class UsuarioRepository {
  static const _tableName = 'registro';//registro é o nome da tabela
  
  static Future<int> insert(Map<String, Object?> map) async {//insert= inserir um registro na tabela do BD  --
    final db = await DBHelper.getInstancia();
    return await db.insert(_tableName, map);
  }
 
    static Future<Map<String, Object?>> getUsuario(int id) async{
    final db = await DBHelper.getInstancia(); 
    final result = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id]
    );
    return result.first; 
  } 
}

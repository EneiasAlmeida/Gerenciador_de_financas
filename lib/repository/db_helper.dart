import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const _dbVersion = 1;
  static const _dbName = 'gerenciador_db.db';
  static const _tableName = 'registro';// nome da tabela
  static const _sql = '''
  CREATE TABLE $_tableName(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(150) NOT NULL,
    valor FLOAT NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    id_usuario VARCHAR(30) NOT NULL
  );
'''; 

  static Future<Database> getInstancia() async {
    final path = '${getDatabasesPath()} $_dbName';
    return await openDatabase(
     path,
      version: _dbVersion,
      onCreate: (db, version) {
       db.execute(_sql);
     },
    );
  }
}

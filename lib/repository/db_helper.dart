import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const _dbVersion = 3;
  static const _dbName = 'gerenciador_db.db';
  // nome da tabela
  static const _tableName = 'registro';
  static const _sql = '''
  CREATE TABLE $_tableName(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(150) NOT NULL,
    valor FLOAT NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL
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
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < 3) {
          db.execute('DROP TABLE IF EXISTS $_tableName');
          db.execute(_sql);
        }
      },
    );
  }
}

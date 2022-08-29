import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Sqflte {
  Sqflte._privateContructor();

  static final Sqflte instance = Sqflte._privateContructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'database.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE database(
      id INTEGER PRIMARY KEY,
      name TEXT
    )
    ''');
  }

  getFavoritos() async {
    Database db = await instance.database;
    var favoritos = await db.query(
      'database',
      columns: ['name'],
    );
    print(favoritos);
  }

  Future<int> add(String favorito) async {
    Database db = await instance.database;
    return await db.insert('database', {'name': favorito});
  }

  getApplicationDocumentsDirectory() {}
}

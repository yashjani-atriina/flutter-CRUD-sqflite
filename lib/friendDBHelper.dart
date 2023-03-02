import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class FriendDBHelper {
  static const dname = 'friends.db';
  static const dbversion = 1;
  static const tblname = 'friends';
  static const colid = 'id';
  static const coltitle = 'title';
  static const coldescription = 'description';
  static const email = 'email';
  static const mno = 'mno';
  static const coldate = 'date';

  static final FriendDBHelper instance = FriendDBHelper();
  static Database? friendsDb;

  static var columnId;

  static var columnData;

  Future<Database?> get db async {
    friendsDb ??= await _initDb();
    return friendsDb;
  }

  _initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + dname;
    return openDatabase(path, version: dbversion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tblname (
      $colid INTEGER PRIMARY KEY AUTOINCREMENT,
      $coltitle TEXT NOT NULL,
      $coldescription TEXT NOT NULL,
      $email TEXT NOT NULL,
      $mno TEXT NOT NULL,
      $coldate TEXT NOT NULL
    )
    ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.db;
    return await db!.insert(tblname, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database? db = await instance.db;
    return await db!.query(tblname);
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database? db = await instance.db;
    int id = row[colid];
    return await db!.update(tblname, row, where: '$colid = ?', whereArgs: [id]);
  }

  Future<int> updatedData(Map<String, dynamic> row) async {
    Database? db = await instance.db;
    int id = row[colid];
    return await db!.update(tblname, row, where: '$colid = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database? db = await instance.db;
    return await db!.delete(tblname, where: '$colid = ?', whereArgs: [id]);
  }

  Future close() async {
    Database? db = await instance.db;
    db!.close();
  }
}

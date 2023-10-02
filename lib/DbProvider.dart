import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:sqflite/sqlite_api.dart';

class DbProvider{
  DbProvider();
  static final DbProvider db = DbProvider();
  static Database? _database;
  Future<Database?> get database async{
    if (_database != null) {
      return _database;
    }

    // init db
    _database = await initDb();
    return _database;
  }

  Future<Database?> initDb() async{
    Directory appDir = await getApplicationDocumentsDirectory();
    String sqlFilePath = appDir.path + "dbApp.db";

    print(sqlFilePath);

    return openDatabase(
        sqlFilePath,
        version: 1,
        onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('create table IF NOT EXISTS employee ('
              'id integer primary key auto increment,'
              'full_name text,'
              'birthday, text,'
              'address text,'
              'phone_number text)'
          );
        }
    );

  }
}

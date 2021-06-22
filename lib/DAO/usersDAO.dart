import 'package:sqflite/sqflite.dart';

class UsersDAO {
  static const _databaseName = "database.db";

  static late Database database;

  static Future<Database> _getConnection() async {
    String databasePath = await getDatabasesPath();
    String path = "$databasePath $_databaseName";
    database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE users (idUser INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT)",
        );
      },
    );
    return database;
  }

  static Future<int> insertRecord(
      String table, Map<String, dynamic> data) async {
    database = await _getConnection();
    int result = await database.insert(table, data);
    database.close();
    return result;
  }
}

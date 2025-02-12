import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const _dbName = "todo.db";
  static const _tableName = "todos";
  static const _columnName = "title";
  static const _columnDesc = "description";
  static const _columnDate = "dateTime";
  static const _columnId = "dateTime";

  static Database? _dataBase;

  Future<Database> get getDatabase async {
    if (_dataBase != null) return _dataBase!;
    _dataBase = await initDataBae();
    return _dataBase!;
  }

  initDataBae() async {
    final db = await openDatabase(
      join(await getDatabasesPath(), _tableName),
      onCreate: (db, version) async {
        await db
            .execute("CREATE TABLE $_tableName($_columnId INTEGER PRIMARY)");
      },
      version: 1,
    );
  }
}

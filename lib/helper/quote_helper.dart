import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../modal/quote_modal.dart';

class DBHleper {
  DBHleper._();

  static final DBHleper dbHleper = DBHleper._();

  Database? db;

  final String dbname = "quotes.db";
  final String TableName = "quote";
  final String colId = "id";
  final String col1name = "happy";
  final String col2name = "sid";
  final String col3name = "angry";

  Future<void> initDB() async {
    var directoryPath = await getDatabasesPath();
    String path = join(directoryPath, dbname);

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          String query =
              "CREATE TABLE IF NOT EXISTS $TableName($colId INTEGER PRIMARY KEY AUTOINCREMENT ,$col1name TEXT,$col2name TEXT ,$col3name TEXT)";

          await db.execute(query);
        });
  }

  Future<int?> inserRecode({required Quote data}) async {
    await initDB();

    String query =
        "INSERT INTO $TableName($col1name,$col2name,$col3name,)VALUES(?,?,?)";

    List args = [data.quotes, data.id];
    int? id = await db?.rawInsert(query, args);

    return id;
  }

  Future<List<Quote>> fetchAllRecode() async {
    await initDB();
    String query = "SELECT * FROM $TableName";

    List<Map<String, dynamic>> data = await db!.rawQuery(query);

    List<Quote> allQuote =
    data.map((e) => Quote.fromMap(data: e)).toList();

    return allQuote;
  }
}
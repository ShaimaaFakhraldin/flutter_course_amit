//  1- get location of database file
// 2 - creat database sqli file

import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class SqlDatabase {
    late Database database;

  static const columnId = "_id";
  static const columnName = "name";
  static const columnAge = "age";
  static const tableName = "table_user";

    Future createDatabase() async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();

    // String pathData =   appDocumentsDir.path + "/mydatabase.db";
    String path = join(appDocumentsDir.path, "mydatabase.db");
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) {
      db.execute(
          "CREATE TABLE table_user (_id INTEGER PRIMARY KEY,name TEXT NOT NULL ,age INTEGER NOT NULL)");
    });
  }

  // create
    Future<int> insertData(Map<String, dynamic> row) async {
    return await database.insert(tableName, row);
  }
 // read
  Future<List<Map<String ,dynamic>>> readData () async{
     return await database.query(tableName);
  }
 // update
  Future<int> updateData (Map<String, dynamic> rowUpdate) async{
    return  await database.update(tableName, rowUpdate ,where: "$columnId = ? " , whereArgs:[rowUpdate[columnId]] );
   
  }
  // delete
Future<int> deleteData (int id) async{
    return await database.delete(tableName ,where:"$columnId = ? "  , whereArgs:[id]  );
    
}
}

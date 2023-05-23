import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DatabaseConnections {

  _createDataBase  (Database database  , int version ) async{
    String sql = "CREATE TABLE users (id INTEGER PRIMARY KEY,name TEXT,contact TEXT,description TEXT)";

   await database.execute(sql);
  }


  Future<Database>  setDatabase( int version) async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
  final path = join(appDocumentsDir.path , "crud_db");
   Database database =await openDatabase(path ,version: version  ,onCreate: _createDataBase);
    return database ;

  }
}
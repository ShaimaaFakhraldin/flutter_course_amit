import 'database_connections.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnections databaseConnections;
  static Database? _database ;

  Repository() {
    databaseConnections = DatabaseConnections();
  }

  Future<Database>  get database  async {
    if(_database !=null){
       return _database! ;
    }else{
      _database =  await  databaseConnections.setDatabase(1);
      return _database!  ;
    }

  }

  //Insert User
  Future<int> insertData(table,Map<String ,dynamic> data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }
  //Read All Record
  Future<List<Map<String ,dynamic>>>readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }
//Read a Single Record By ID
  readDataById(table, itemId) async {
    var connection = await database;
    return await connection.query(table, where: 'id=?', whereArgs: [itemId]);
  }


  //Update User
  updateData(table, data) async {
    var connection = await database;
    return await connection
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  //Delete User
  deleteDataById(table, itemId) async {
    var connection = await database;
    return await connection.rawDelete("delete from $table where id=$itemId");
  }


}

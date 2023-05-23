import 'package:flutter/material.dart';
import 'package:flutter_step_one/local_data/sqil_qureries/ex1/sql_database.dart';

// await db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY,
//             $columnName TEXT NOT NULL,
//             $columnAge INTEGER NOT NULL
//           )
//           ''');
import '../../../main.dart';

class SqlitHome extends StatefulWidget {
  const SqlitHome({Key? key}) : super(key: key);

  @override
  State<SqlitHome> createState() => _SqlitHomeState();
}

class _SqlitHomeState extends State<SqlitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqlite example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () async {
                    Map<String, dynamic> row = {
                      SqlDatabase.columnName: "Shaimaa",
                      SqlDatabase.columnAge: "25"
                    };
                    print("insert");
                    int rowId = await sqlDatabase.insertData(row);
                    print("inserted row id $rowId");
                  },
                  child: Text("Insert"))),
          Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () async {
                    List data = await sqlDatabase.readData();
                    for (var value in data) {
                      print("row value   : $value");
                    }
                  },
                  child: Text("Read"))),
          Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () async {
                Map<String, dynamic> rowUpdate = {
                  SqlDatabase.columnId :"2" ,
                  SqlDatabase.columnName :"Ahmed" ,
                  SqlDatabase.columnAge :"30"
                };
                int row = await sqlDatabase.updateData(rowUpdate);
               print("update ${row}");

              }, child: Text("update"))),
          Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: ()  async{
              int id =    await sqlDatabase.deleteData(1);
              print("delete  $id");
              }, child: Text("delete"))),
        ],
      ),
    );
  }
}

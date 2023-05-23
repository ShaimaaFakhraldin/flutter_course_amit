import 'package:flutter/material.dart';
import 'package:flutter_step_one/local_data/sqil_qureries/ex2/screens/addUser.dart';

import '../service/user_model.dart';
import '../service/user_service.dart';

class ListUsers extends StatefulWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  State<ListUsers> createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  List<UserModel> userModelList = [];
  final _userService = UserServices();

  @override
  void initState() {
    getAllUsers();
    super.initState();
  }

  getAllUsers() async {
    List<Map<String, dynamic>> users = await _userService.readAllUsers();
    users.forEach((element) {
      setState(() {
        UserModel userModel = UserModel(
           );
        userModel. name= element["name"];
        userModel. contact=  element["contact"];
        userModel. description=  element["description"];
        userModelList.add(userModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQLite CRUD"),
      ),
      body: ListView.builder(
          itemCount: userModelList.length,
          itemBuilder: (BuildContext con, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: Text("${userModelList[index].name}"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddUser())).then((value){
                getAllUsers();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  _deleteFormDialog(BuildContext context, userId) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: const Text(
              'Are You Sure to Delete',
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white, // foreground
                      backgroundColor: Colors.red),
                  onPressed: () async {},
                  child: const Text('Delete')),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white, // foreground
                      backgroundColor: Colors.teal),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'))
            ],
          );
        });
  }
}

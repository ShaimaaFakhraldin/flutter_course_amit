import 'package:flutter/material.dart';
import 'package:flutter_step_one/animation_ex/user.dart';
import 'package:flutter_step_one/animation_ex/users/details_user.dart';

class HeroExample extends StatefulWidget {
  const HeroExample({Key? key}) : super(key: key);

  @override
  State<HeroExample> createState() => _HeroExampleState();
}

class _HeroExampleState extends State<HeroExample> {
  List<User> users = [
    User(
        id: 0,
        name: "Ahmed",
        email: "ahmed@gmail.com",
        imagePath: "assets/1.png"),
    User(
        id: 1,
        name: "Shaimaa",
        email: "shaimaa@gmail.com",
        imagePath: "assets/2.png"),
    User(
        id: 2,
        name: "Hossam",
        email: "hossamgmail.com",
        imagePath: "assets/3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Users Hero"),),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (BuildContext context , int index){
         return InkWell(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext con){
                return UserDetails( user: users[index]);
             }));
           },
           child: ListTile(
             leading: Hero(
               tag: users[index].id,
               child: Image.asset(users[index].imagePath),
             ),
             title: Text(users[index].name),
             subtitle:Text(users[index].email) ,
           ),
         );
      })
    );
  }
}

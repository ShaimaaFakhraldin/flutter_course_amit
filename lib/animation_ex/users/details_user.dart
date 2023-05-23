import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_step_one/animation_ex/user.dart';

class UserDetails extends StatefulWidget {
  final User user ;
  const UserDetails({Key? key , required this.user}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("show details"),
      ),
      body: Column(
        children: [

           Hero(
             tag: widget.user.id,
               child: Image.asset(widget.user.imagePath ,width: 400 , height: 400,)),
          SizedBox(height: 20,),
          Text("Name : ${widget.user.name}"  ,style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Text("email : ${widget.user.email}"  ,style: TextStyle(fontSize: 20),)

        ],
      ),
    );
  }
}

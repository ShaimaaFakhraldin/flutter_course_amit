import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
        centerTitle: true,
        elevation: 10,
        // leading: Icon(Icons.arrow_back_ios),
        // actions: [
        //   IconButton(onPressed:(){
        //
        //   } , icon: Icon(Icons.settings))
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              color: Colors.red,
            )),
            Text("page 1"),
            Text("page 2"),
            Text("page 3"),
            Text("page 4"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TextFormField(),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                // textAlign:  TextAlign.center,
                decoration: InputDecoration(
                  /// label: Text("UserName"),
                  labelText: "userName",
                  hintText: "enter your name",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic ,color: Colors.grey[300]),
                  contentPadding: EdgeInsetsDirectional.only(start: 20 ,top: 20 ,bottom: 20),
                  prefixIcon: Icon(Icons.airplanemode_active_sharp),
                  suffixIcon: Icon(Icons.label),
                  fillColor: Colors.blueAccent,
                  filled: true ,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius:
                      borderSide: BorderSide(color: Colors.grey  ,width: 5)
                  ),
                  enabledBorder:
                  OutlineInputBorder(
                    // borderRadius:
                      borderSide: BorderSide(color: Colors.brown  ,width: 5)
                  ),



                ),
                onChanged: (String value){
                  print("show_change");
                  print(value);
                },
                validator:(String? value ){
                   return value!.isEmpty ? "you have enter your name " : null;

                },
              onSaved: (String? value ){

              },

              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.phone,
                // textAlign:  TextAlign.center,
                decoration: InputDecoration(
                 /// label: Text("UserName"),
                  labelText: "userName",
                  hintText: "enter your name",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic ,color: Colors.grey[300]),
                  contentPadding: EdgeInsetsDirectional.only(start: 20 ,top: 20 ,bottom: 20),
                  prefixIcon: Icon(Icons.airplanemode_active_sharp),
                  suffixIcon: Icon(Icons.label),
                  fillColor: Colors.blueAccent,
                  filled: true ,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius:
                    borderSide: BorderSide(color: Colors.grey  ,width: 5)
                  ),
                  enabledBorder:
                  OutlineInputBorder(
                    // borderRadius:
                      borderSide: BorderSide(color: Colors.brown  ,width: 5)
                  ),



                ),
                onChanged: (String value){
                  print("show_change");
                   print(value);
                },
                onSubmitted: (String value){
                  print("onSubmitted");
                  print(value);
                },

              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.phone,
                // textAlign:  TextAlign.center,
                decoration: InputDecoration(
                  /// label: Text("UserName"),
                  labelText: "userName",
                  hintText: "enter your name",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic ,color: Colors.grey[300]),
                  contentPadding: EdgeInsetsDirectional.only(start: 20 ,top: 20 ,bottom: 20),
                  prefixIcon: Icon(Icons.airplanemode_active_sharp),
                  suffixIcon: Icon(Icons.label),
                  fillColor: Colors.blueAccent,
                  filled: true ,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius:
                      borderSide: BorderSide(color: Colors.grey  ,width: 5)
                  ),
                  enabledBorder:
                  OutlineInputBorder(
                    // borderRadius:
                      borderSide: BorderSide(color: Colors.brown  ,width: 5)
                  ),
 errorBorder:
 OutlineInputBorder(
   // borderRadius:
     borderSide: BorderSide(color: Colors.red  ,width: 5)
 ),


                ),
                onChanged: (String value){
                  print("show_change");
                  print(value);
                },

                onSubmitted: (String value){
                  print("onSubmitted");
                  print(value);
                },

              ),
            ),

            Container(
              color: Colors.greenAccent,
              height: 300,
              width: 300,
              child: Container(
                margin:
                    EdgeInsets.only(top: 40, left: 100, right: 30, bottom: 30),
                 padding:  EdgeInsetsDirectional.only(top: 10, start: 30, end: 10, bottom: 30)
                ,
                transform: Matrix4.rotationY(pi/4 )..rotateX(pi/4),
                color: Colors.red,
                height: 200,
                width: 200,
                child: Container(
                   color: Colors.indigo,
                  child: Text(
                    "inside container 1 ",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
             Text("HI from Amit " , style: TextStyle(fontSize:  20 ,
                  foreground: Paint()..color = Colors.brown ..strokeWidth  =1  ..style = PaintingStyle.stroke   ,
  letterSpacing: 4,
         shadows:  [
            Shadow(color: Colors.red , offset: Offset(2,2) ,blurRadius: 2)
         ],
          background: Paint()..color= Colors.yellow ,
          decoration:  TextDecoration.lineThrough,
         decorationStyle: TextDecorationStyle.dotted,
         decorationColor: Colors.red,

         fontStyle:  FontStyle.italic),),

             Container(
               margin: EdgeInsets.only(top: 20),
                height:  200 ,
                width:  200,
                alignment: Alignment.center,
                color:  Colors.pinkAccent,
                child:  Text("show"  ,style:  TextStyle (color:  Colors.white  ,fontSize: 30),),
             )

          ],
        ),
      ),
    );
  }
}

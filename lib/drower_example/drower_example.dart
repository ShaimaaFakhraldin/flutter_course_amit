import 'package:flutter/material.dart';
import 'package:flutter_step_one/drower_example/bottonNavigation_pages/home_bottom.dart';
import 'package:flutter_step_one/drower_example/profile_ex.dart';

import 'bottonNavigation_pages/cart_battom.dart';

class DrowerExample extends StatefulWidget {
  const DrowerExample({Key? key}) : super(key: key);

  @override
  State<DrowerExample> createState() => _DrowerExampleState();
}

class _DrowerExampleState extends State<DrowerExample> {
  List<Widget> myUI =[
    HomeBattom(),
    CartBottom(),


  ];
   int courntUi= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Drawer example"),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black
              ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),

                  margin: EdgeInsets.zero,
              accountName: Text("shaimaa"),
              accountEmail: Text("shaimaa@amit.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("S" ,style: TextStyle(fontSize: 30 ,color: Colors.red),),
              ),

            )) ,
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext co){
                  return  Profile();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("My courses"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Go premium"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.video_label),
              title: Text("Videos"),
              onTap: (){},
            ),

          ],

        ),

      ),
      body:myUI[courntUi] ,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.red ,fontSize: 20),
          onTap: (int index){
           setState(() {
             courntUi = index;
           });

         },
        items: [
          BottomNavigationBarItem(
              label: "Home",

              icon: Icon(Icons.home ,color:  courntUi == 0 ? Colors.red :Colors.grey )),
          BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(Icons.shopping_cart, color:  courntUi == 1 ? Colors.red :Colors.grey )),

        ],

      ),
    );
  }
}

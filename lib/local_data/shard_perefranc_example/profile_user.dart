import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
   String? name;
   int? phone;
   double? hight;
  @override
  void initState() {
     super.initState();
     getUserData();

  }

   getUserData()  async{

    SharedPreferences preferences =  await SharedPreferences.getInstance();
       name= preferences.getString("user_name");
       phone = preferences.getInt("user_phone");
       hight= preferences.getDouble("user_hight");
       print("data_loaded ....");
       setState(() {

       });
   }

   removeData(String key) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(key);

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show data uer" ),
       centerTitle: true, actions: [IconButton(onPressed: (){
          removeData("user_name");
          removeData("user_phone");
          removeData("user_hight");


        }, icon: Icon(Icons.clear))],),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20, ),
            Text("Name :  $name" ,style: TextStyle(fontSize: 30 ),),
            SizedBox(height: 20,),
            Text("phone : $phone",style: TextStyle(fontSize: 30 ),),
            SizedBox(height: 20,),
            Text("Hight : $hight",style: TextStyle(fontSize: 30 ),),
            SizedBox( height: 40,),
            ElevatedButton(onPressed: () async{
              Map map = {"id":1};
              map["id"] =2;
              SharedPreferences p = await SharedPreferences.getInstance();
              p.setString("user_name", "Hossam");
              p.setInt("user_phone", 01210387863);
              p.setDouble("user_hight", 144);


            }, child: Text("Update data"))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          getUserData();
        },child: Icon(Icons.refresh),
      ),
    );
  }
}

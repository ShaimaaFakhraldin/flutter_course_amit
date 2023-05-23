// save data in my app
// can acess only with my app
import 'package:flutter/material.dart';
import 'package:flutter_step_one/local_data/shard_perefranc_example/profile_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddUserForm extends StatefulWidget {
   const AddUserForm({Key? key}) : super(key: key);

  @override
  State<AddUserForm> createState() => _AddUserFormState();
}

class _AddUserFormState extends State<AddUserForm> {
  final formKey = GlobalKey<FormState>();
  final scKey = GlobalKey <ScaffoldState>();
  String? name ;
  String? phone ;
  double? hight ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:scKey ,
      appBar:  AppBar(
        title: Text("Save data user"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26 , vertical:  26),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextFormField(
                  keyboardType:  TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Enter Your name",
                    labelText: "Enter Your name",
                      errorText: "please enter your name ... "
                  ),
                  onChanged: (String?  value){
                    setState(() {
                      name = value;
                    });

                  },
                  onSaved: (String? value){

                  },

                ),
               SizedBox(height: 20,),
              TextFormField(
                 keyboardType:  TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter Your phone",
                  labelText: "Enter Your phone",
                  errorText: "please enter your phone ... "
                ),
                onChanged: (String?  value){
                  setState(() {

                    phone = value ;
                  });

                },
                onSaved: (String? value){

                },

              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType:  TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Your Hight",
                    labelText: "Enter Your Hight",
                    errorText: "please enter your Hight ... "
                ),
                onChanged: (String?  value){
                  setState(() {

                    hight = double.parse(value!); ;
                  });

                },
                onSaved: (String? value){

                },

              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () async{

                 if( formKey.currentState!.validate()) {

                  // Map map ={};
                   final SharedPreferences prefs = await SharedPreferences.getInstance();
                  // map["is_data_save"] = true ;
               ///  prefs.set(key, value);

                   prefs.setBool("is_data_save", true);
                   prefs.setString("user_name",name! );
                   prefs.setInt("user_phone", int.parse(phone!));
                   prefs.setDouble("user_hight", hight!);
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Congratulation data is saved ")));



                 }else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your data")));
                  }

              }, child: Text("Save data")) ,
              TextButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (BuildContext con){  return

                  ProfileUser();}));
              }, child: Text("show user data"))

            ],
          ),
        ),
      ),
    );
  }
}

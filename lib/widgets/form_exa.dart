import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Form"),),
      body: SingleChildScrollView(
        child: Form(
          key:_formKey ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                validator:(String? value ){
                  return value!.isEmpty ? "you have enter your name " : null;

                },
                onSaved: (String? value ){

                },

              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                // textAlign:  TextAlign.center,
                decoration: InputDecoration(
                  /// label: Text("UserName"),
                  labelText: "Email",
                  hintText: "enter email",
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
                validator:(String? value ){
                  return value!.isEmpty ? "you have enter your email " : null;

                },
                onSaved: (String? value ){

                },

              ),
            ),     Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                // textAlign:  TextAlign.center,
                decoration: InputDecoration(
                  /// label: Text("UserName"),
                  labelText: "Phone",
                  hintText: "enter Phone",
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
                validator:(String? value ){
                  return value!.isEmpty ? "you have enter your phone " : null;

                },
                onSaved: (String? value ){

                },

              ),
            ),
            ElevatedButton(onPressed: (){
              _formKey.currentState!.validate();

            }, child: Text("save my data"))



          ],),
        ),
      ),
    );
  }
}

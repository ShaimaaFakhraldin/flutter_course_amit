import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
            Icons.person,
            size: 100,
             // color: Colors.blue,
          ) ,
          Container(
            color :Colors.red,
            alignment:Alignment.center,
            height:  300,
            width: 300,
            child: Text("shaimaa"),
          ),
          SizedBox(height: 50,),
          TextFormField(

            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
              contentPadding: EdgeInsets.all(15)
            ),
            validator: (String ? value){
               return value!.isEmpty ? "you should enter your email" : null;
            },
          ),
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                contentPadding: EdgeInsets.all(15),
              suffixIcon: Icon(Icons.visibility)
            ),
            validator: (String ? value){
              return value!.isEmpty ? "you should enter your  password" : null;
            },
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Padding(
            padding: EdgeInsets.all(5),
              child: Text("Login" , style: TextStyle(color: Colors.white, fontSize: 20))),
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue)
                      )
                  )
              )

          )

        ],
      ),
    );
  }
}

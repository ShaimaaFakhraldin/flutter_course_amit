import 'package:flutter/material.dart';
import 'package:flutter_step_one/navigation_ex/cart_page.dart';

class BackExample extends StatelessWidget {
  const BackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Back example"),
      ),
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
           Navigator.pop(context);

            },child: Text("Back to main page"),),
            SizedBox(height: 40,),

            ElevatedButton(onPressed: (){
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){ return  CartPage(); }), (route) => false);

            },child: Text("Remove all"),),
          ],
        )
      ),
    );
  }
}

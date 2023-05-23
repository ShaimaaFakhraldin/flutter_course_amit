import 'package:flutter/material.dart';
import 'package:flutter_step_one/navigation_ex/cart_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Page Two"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, "CartPage");
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext cont){
            //   return CartPage();
            // }));
          },
          child: Text("Show cart"),
        ),
      ),
    );
  }
}

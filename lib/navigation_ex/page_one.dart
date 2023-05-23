import 'package:flutter/material.dart';
import 'package:flutter_step_one/navigation_ex/cart_page.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
       // leading: Icon(Icons.arrow_back_ios),
        title: Text("Page one"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext cont){
              return CartPage();
            }));
          },
          child: Text("Show cart"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_step_one/navigation_ex/page_one.dart';
import 'package:flutter_step_one/navigation_ex/page_two.dart';
import 'package:flutter_step_one/navigation_ex/product.dart';

import 'back_example.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar:  AppBar(
        title: Text("Main page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "PageOne");

                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext cont){
                  //   return PageOne();
                  // }));
                }, child: Text(" push")) ,
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext cont){
                    return PageTwo();
                  }));

                }, child: Text("pushReplacement")) ,
              ],
            ) ,
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext cont){
                return BackExample();
              }));


            }, child:
            Text("Show page ")),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext con){
              //    return ProductDetails(productId:  786887,);
              // }));
              Navigator.pushNamed(context, "ProductDetails"
                  ,arguments: 3232983792372);
            }, child: Text("Send arguments"))

          ],
        ),
      ),
    );
  }
}

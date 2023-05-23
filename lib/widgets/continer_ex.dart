import 'package:flutter/material.dart';

class ContainerEXmple extends StatelessWidget {
  const ContainerEXmple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: Text("Container Example"),
      ),
      body:  Center(
        child: Column(
          children: [
            Container(
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20) ,
                   bottomRight:  Radius.circular(20) ,
                 )
               ),
               height:  200,
              width: 200,
            )

          ],
        ),
      ),

    );
  }
}

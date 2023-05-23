// view
// child
// children
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Column example",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _columnExample()
    );
  }
_rowExample(){
     return Container(
       margin: EdgeInsets.symmetric(vertical: 20 ),
       height: 400,
       color: Colors.blue,
       child:
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center         ,
         children: [
           Expanded(child:

           Container(
             height: 100,
             width: 100,
             color: Colors.red,
           )),
           Expanded(
             child: Container(
               height: 100,
               width: 100,
               color: Colors.green,
             ),
           ),
         ],
       ),
     );
}
  _columnExample() {
    return Container(
      color: Colors.blue,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,

            child:
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),

         Expanded(
           flex: 1,
           child: Container(
                height: 100,
                width: 100,
                color: Colors.green,

            ),
         ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.yellow,
          // ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.pinkAccent,
          // ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.brown,
          // ),
          // Container(
          //   height: 50,
          //   width: 100,
          //   color: Colors.black,
          // ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:  Text("Stack example"),),
      body:
        Container(
           child: Column(
             children: [

               Container(
                 height: 200,

                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  color: Colors.cyanAccent,
                  child:  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:  Colors.red,
                          shape: BoxShape.circle,

                        ),
                         height: 80,
                        width: 80,
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                           decoration: BoxDecoration(
                            color:  Colors.green,
                            shape: BoxShape.circle,

                          ),
                          height: 80,
                          width: 80,
                        ),
                      ),
                      Positioned(

                        left: 80,
                        child: Container(

                          decoration: BoxDecoration(
                            color:  Colors.brown,
                            shape: BoxShape.circle,

                          ),
                          height: 80,
                          width: 80,
                        ),
                      ),

                    ],
                  )
               )
             ],
           ),
        )
    );
  }
   _stackExample(){
     return  Container(
       height: 300,

       color: Colors.blue,
       child:  Stack(
         clipBehavior: Clip.none,
         fit: StackFit.loose,

         alignment: Alignment.center,

         children: [

           Container(
             height: 300,
             width: 300,
             color: Colors.cyanAccent,
           ),
           Positioned(
               top: 100,
               child:
               Container(
                 height: 400,
                 width: 200,
                 color: Colors.brown,
               )),
         ],
       ),
     ) ;
   }
    _containerMargenInStack(){
     return        Container(
         height: 200,

         margin: EdgeInsets.all(5),
         width: double.infinity,
         color: Colors.cyanAccent,
         child:  Stack(
           children: [
             Container(
               decoration: BoxDecoration(
                 color:  Colors.red,
                 shape: BoxShape.circle,

               ),
               height: 80,
               width: 80,
             ),
             Container(
               margin: EdgeInsets.only(left: 40),
               decoration: BoxDecoration(
                 color:  Colors.green,
                 shape: BoxShape.circle,

               ),
               height: 80,
               width: 80,
             ),
             Container(
               margin: EdgeInsets.only(left: 80),

               decoration: BoxDecoration(
                 color:  Colors.brown,
                 shape: BoxShape.circle,

               ),
               height: 80,
               width: 80,
             ),

           ],
         )
     );
    }
}

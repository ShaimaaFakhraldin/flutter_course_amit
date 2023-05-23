import 'package:flutter/material.dart';

class FlutterButtons extends StatefulWidget {
  const FlutterButtons({Key? key}) : super(key: key);

  @override
  State<FlutterButtons> createState() => _FlutterButtonsState();
}

class _FlutterButtonsState extends State<FlutterButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// ElevatedButton
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.yellow,
                    fixedSize: Size(200, 100)),
                onPressed: () {
                  print("ElevatedButton __ onPressed:");
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.add), Text("Add to cart")],
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.red,
                disabledBackgroundColor: Colors.orange,
                fixedSize: Size(300, 50),
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)
                )
              ),
                onPressed: null,
                icon: Icon(Icons.account_circle_sharp),
                label: Text("go to profile")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),
                padding:  MaterialStateProperty.all(EdgeInsets.all(10))
              ),
                
                onPressed: (){}, child: Icon(Icons.send)) ,
             SizedBox(height: 30,),
            /// OutlinedButton

            OutlinedButton(onPressed: (){}, child:Text("Press here")),
            SizedBox(height: 10,),
            OutlinedButton(
                onPressed:null,
                child: Text("Tap on this"),
              style: OutlinedButton.styleFrom(
                  foregroundColor:Colors.black,
             //   backgroundColor: Colors.red,

                side: BorderSide(
                  width: 10,
                  color: Colors.lightBlue
                )
              ),

            ),
            SizedBox(height: 30,),
            /// IconButton

            IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            SizedBox(height: 30,),
            /// FloatingActionButton
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: (){},
              child: Icon(Icons.shopping_cart),
            ),
            SizedBox(height: 30,),
            InkWell(
               onTap: (){
                  print("show from click Container ");
               },
               child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.purple,
                  child: Text("show data" , style: TextStyle( color :Colors.white,fontSize: 20),),
               ),
            ),
            GestureDetector(
              onTap:(){

                print("show from click Image ");

              } ,
               child:  Image.asset("assets/image_one.jpg"),
               
             )


          ],
        ),
      ),
    );
  }
}

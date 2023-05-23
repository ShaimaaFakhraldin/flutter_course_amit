import 'package:flutter/material.dart';

class GridviewExample extends StatefulWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  State<GridviewExample> createState() => _GridviewExampleState();
}

class _GridviewExampleState extends State<GridviewExample> {
  List  data = ["Apple","Orange","Bannaa" , "Mango" , "WaterMellon"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
         title:  Text("GridView example"),
      ),
       body: GridView.extent(
      padding: EdgeInsets.all(10),
         maxCrossAxisExtent: 200 ,
         crossAxisSpacing: 10 ,
         mainAxisSpacing: 10 ,


         children: [
            Container(

             color: Colors.green,
           ),    Container(

             color: Colors.blue,
           ),
           Container(
             color: Colors.cyanAccent,
           ),    Container(

             color: Colors.red,
           ),    Container(

             color: Colors.orange,
           ),    Container(

             color: Colors.yellow,
           ),    Container(

             color: Colors.green,
           ),    Container(

             color: Colors.blue,
           ),
         ],)
    );
  }


   itemView(int index){
     return  Container(

       //  margin: EdgeInsets.all(5),
       alignment: Alignment.center,
       color:  Colors.green,
       child:  Text(" ${data[index]} " , style:  TextStyle(fontSize:  20 , color:  Colors.white),),

     );
   }
   _gridView(){
     return GridView(
       reverse: true,
       scrollDirection: Axis.vertical,
       //   physics: NeverScrollableScrollPhysics(),
       shrinkWrap: true,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing: 16,
           mainAxisSpacing: 16,
           childAspectRatio: .4
       ),


       children: [

         Container(
           color: Colors.cyanAccent,
         ),    Container(

           color: Colors.red,
         ),    Container(

           color: Colors.orange,
         ),    Container(

           color: Colors.yellow,
         ),    Container(

           color: Colors.green,
         ),    Container(

           color: Colors.blue,
         ),
         Container(
           color: Colors.cyanAccent,
         ),    Container(

           color: Colors.red,
         ),    Container(

           color: Colors.orange,
         ),    Container(

           color: Colors.yellow,
         ),    Container(

           color: Colors.green,
         ),    Container(

           color: Colors.blue,
         ),
       ],
     );
   }
   _gridViewBuilder(){
     return Container(
       margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16 ),
       child: GridView.builder(
           itemCount: data.length,
           gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 16,
               crossAxisSpacing: 16,
               childAspectRatio: 2
           ),
           itemBuilder: (BuildContext context , int index){
             ItemView itemView  = ItemView(valueIndex: data[index],);
             return itemView;
           }),
     );
   }
   _gridViewCount(){
     return GridView.count(
       crossAxisCount: 3 ,
       mainAxisSpacing: 16,
       children: [
         Container(
           color: Colors.cyanAccent,
         ),    Container(

           color: Colors.red,
         ),    Container(

           color: Colors.orange,
         ),    Container(

           color: Colors.yellow,
         ),    Container(

           color: Colors.green,
         ),    Container(

           color: Colors.blue,
         ),
         Container(
           color: Colors.cyanAccent,
         ),    Container(

           color: Colors.red,
         ),    Container(

           color: Colors.orange,
         ),    Container(

           color: Colors.yellow,
         ),    Container(

           color: Colors.green,
         ),    Container(

           color: Colors.blue,
         ),

       ],);
   }
}
class ItemView extends StatelessWidget {
 final String  valueIndex ;
  const ItemView({Key? key , required this.valueIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      //  margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      color:  Colors.green,
      child:  Text(" ${valueIndex} " , style:  TextStyle(fontSize:  20 , color:  Colors.white),),

    );
  }
}


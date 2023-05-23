import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List  data = [1,3,4,5,6,7,8,9,10,11,12,13];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Text("Listview Example"),
        centerTitle: true,
      ),
      body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context , int index){
             return Container(
               color: Colors.cyanAccent,
               margin: EdgeInsets.all(5),
               child:  Text("index : $index"),
             );
          } ,
        childCount: data.length 
        
      ) 
    )) ;
  }
  _listViewExmaple1 (){
     return   Container(
       color: Colors.blue,
       child: ListView(
         scrollDirection: Axis.vertical,
         padding: EdgeInsets.only(left: 20),
         reverse: true,
       shrinkWrap: false,
       //  physics: NeverScrollableScrollPhysics(),

         children: [
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.only(bottom:  10),
             color: Colors.red,
             child: Text("Container 1" , style:  TextStyle(color: Colors.white),),
           ),
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: Text("Container 2" , style:  TextStyle(color: Colors.white),),
           ),
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: Text("Container 3" , style:  TextStyle(color: Colors.white),),
           ),
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: Text("Container 4" , style:  TextStyle(color: Colors.white),),
           ),
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: Text("Container 5" , style:  TextStyle(color: Colors.white),),
           ),
           Container(
             height:  100,
             width: 100,
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: Text("Container 6" , style:  TextStyle(color: Colors.white),),
           ),
         ],
       ),
     );
  }
   _ListViewBuilder(){
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(5),
          color:  Colors.green,
          child:  Text("hi  from  ${data[index]}"),
        );
      },

    );
   }
   _listViewsSeparated(){
     return ListView.separated(itemBuilder: (BuildContext context , int index){
       return ListTile(

         leading:  Container(
           height: 100,
           width: 100,
           decoration: BoxDecoration(
               color: Colors.green,
               shape: BoxShape.circle
           ),
         ),
         title:  Text("index : $index"),
         subtitle: Text("my item "),

       );
     }, separatorBuilder:  (BuildContext context , int index){
       return Container(height: 50 ,
         color: Colors.red,);
     }, itemCount: data.length)
     ;
   }
  shrinkWrapExample(){
     return  Center(
       child: Container(
         margin: EdgeInsets.all(40),
         color: Colors.red,
         child: ListView(
           shrinkWrap: true,
           children: [
             ListTile(
               title: Text(" item 1") ,
               subtitle: Text("subtitle 1"),
               leading: Icon(Icons.person),
               trailing: Icon(Icons.arrow_forward),

             ),
             ListTile(
               title: Text(" item 2") ,
               subtitle: Text("subtitle 1"),

             ),
             ListTile(
               title: Text(" item 3") ,
             ),
           ],
         ),
       ),

     );
  }
  singleChildScrollViewRExamplw(){
     return Container(
       height: 100,
       child: SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Text("kjsdkskdkdksdksldsdjksdjskdjslkdshdsjldsldhsjdhsajdhdhjsdshdksdhjksdhskdhskdjshdkjsdhskdjhsdkjdhksdhsdkdskdskhsa" ,maxLines: 1,),
       ),
     );
  }

}

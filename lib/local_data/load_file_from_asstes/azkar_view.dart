import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'colors_st.dart';
//
//
class AzkarView extends StatefulWidget {
  const AzkarView({Key? key}) : super(key: key);

  @override
  State<AzkarView> createState() => _AzkarViewState();
}

class _AzkarViewState extends State<AzkarView> {
  List<List<dynamic>>  dataExel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAssets();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "السنه النبويه" ,style: TextStyle(
            fontFamily: "Aviny",
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color:AppColors.primeryColor ,
            shadows: [
              Shadow(color:  Colors.black38.withOpacity(.01),
                 blurRadius: 9,
                offset:  Offset(0,2)
              )
            ]


          ),),
          centerTitle: true,
        ),
        body: Column(children: [
          headerUi(),
         Expanded(

           child:     ListView.builder(
               itemCount: dataExel.length,
               itemBuilder: (BuildContext con  , int index) {

                  var  item = dataExel[index];
                 return itmeView(index  ,item.toString() );
               })
         )





        ],),
      ),
    );
  }
   headerUi(){
     return  Container(
       width: double.infinity,
       height:  MediaQuery.of(context).size.height *0.17,
       margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
       padding:  EdgeInsets.only(right: 14 , top: 8),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(14),
           color: AppColors.primeryColor,
           gradient: LinearGradient(begin: Alignment.topRight ,end: Alignment.bottomLeft ,
               colors: [
                 Color.fromARGB(255, 30, 49, 9),
                 AppColors.primeryColor.withOpacity(0.9)
               ]
           ),
           boxShadow:  [
             BoxShadow(color: AppColors.primeryColor.withOpacity(0.6), blurRadius: 9 , offset: Offset(0 ,20) ,
                 spreadRadius: -20)
           ]

       ),
       child: Stack(
         children: [
           //'﴿وَمَا يَنْطِقُ عَنِ الْهَوَى . إِنْ هُوَ إِلَّا وَحْيٌ يُوحَى ﴾',
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Row(children: [
                 Icon(Icons.menu_book , color: Colors.white ,size: 20,) ,
                 SizedBox(width: 8,),
                 Text("الحديث الشريف" ,style: Theme.of(context)
                     .textTheme.apply(bodyColor:  Colors.white ,fontSizeDelta: -5)
                     .bodyLarge,)
               ],),
               SizedBox(height:10 ,),
               Text('﴿وَمَا يَنْطِقُ عَنِ الْهَوَى . إِنْ هُوَ إِلَّا وَحْيٌ يُوحَى ﴾',style: Theme.of(context)
                   .textTheme.apply(bodyColor:  Colors.white ,
                   fontSizeDelta: 1.9)
                   .bodyLarge,) ,

             ],
           ),
           Positioned(
               left: -40,
               bottom: -5,
               child: SizedBox(
                 width: 200,
                 child: Image.asset("assets/A3.png" , height: 100,),
               ))


         ],
       ),
     );
   }
   itmeView( int index  ,String value){
     return Column(
       children: [
         Container(
           width: double.infinity,
           margin: EdgeInsets.all(20),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(18),
             color: AppColors.scondryColor.withOpacity(.2)
                 

           ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 4),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primeryColor
                  ),
                  child: Text("${index+1}"  ,style:  Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined , color:AppColors.primeryColor ,))
              ],
            ),
         ),
         Text("$value" ,style:
         Theme.of(context).textTheme.apply(fontFamily:"Aviny" ,fontSizeDelta: 1.9 ).labelLarge,)

       ],
     );
   }
   loadAssets() async{
    List mm = [ []  , []   , [] ,[] ,[]] ;

     var myData=  await rootBundle.loadString("assets/hadith.csv");
     List<List<dynamic>>  csvTable = CsvToListConverter(eol: "\n").convert(myData);
     setState(() {
       dataExel = csvTable;

     });

  }


}

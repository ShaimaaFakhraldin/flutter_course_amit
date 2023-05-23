import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading:  CircleAvatar(
          backgroundImage:NetworkImage('https://www.woolha.com/media/2020/03/eevee.png') ,
          backgroundColor: Colors.red,
            child: Text("Avatar" ,style: TextStyle(color: Colors.black),),
        ) ,
        title: Text("Image Example"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              // named constractor

          CachedNetworkImage(
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            imageUrl:
            'https://via.placeholder.com/200x150',
          ),

              // SizedBox(
              //   height: 200,
              //   width: 200,
              //   child:
                CircleAvatar(
                  backgroundImage:NetworkImage('https://www.woolha.com/media/2020/03/eevee.png') ,
                   backgroundColor: Colors.red,
                  radius: 100,
                ),

              // ),


              SizedBox(height: 50,),


              Text(" Image gif"),
              SizedBox(height: 20,),
              Image.asset("assets/image_processing.gif"),
              SizedBox(height: 20,),



              Text("named constractor"),
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child:    Image.asset("assets/fits.jpg",

                  fit: BoxFit.fitHeight,



                ),
              ),








              SizedBox(height: 20,),

              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child:    Image.asset("assets/fits.jpg",

                  fit: BoxFit.fitWidth,



                ),
              ),

              SizedBox(height: 20,),
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child:    Image.asset("assets/fits.jpg",

                  fit: BoxFit.fill,



                ),
              ),

              SizedBox(height: 20,),
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child:    Image.asset("assets/fits.jpg",

                  fit: BoxFit.cover,



                ),
              ),
              SizedBox(height: 20,),
              // constractor
              Text("constractor"),

              Image(image: AssetImage("assets/image_two.png")),
              SizedBox(height: 20,),
              Text("DecorationImage  (AssetImage)"),

              Container(
                height: 300,
                width: 300,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/image_three.jpg"))
                ),
                alignment: Alignment.center,
                child: Text("show text" ,style: TextStyle(fontSize: 30 ,color: Colors.green),),
              ),
              SizedBox(height: 20,),
              Text("Image.network"),
              Image.network("https://picsum.photos/id/1074/400/400") ,
              Text("DecorationImage  (NetworkImage)"),

              Container(
                height: 1000,
                width: 600,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA"),
                      repeat: ImageRepeat.repeatY

                    )

                ),
                alignment: Alignment.center,
                child: Text("show text" ,style: TextStyle(fontSize: 30 ,color: Colors.green),),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

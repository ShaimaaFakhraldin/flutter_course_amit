import 'package:flutter/material.dart';

class SimpleAnimation extends StatefulWidget   {
    SimpleAnimation({Key? key}) : super(key: key);

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> with SingleTickerProviderStateMixin  {
   Animation?  myanimation ;
   AnimationController? animationController ; 
   @override
  void initState() {
     animationController = AnimationController(vsync: this ,duration: Duration(seconds: 3));
      // general animation
     // myanimation = CurvedAnimation(parent: animationController!,
     //     curve: Curves.easeIn);
     //  tween
     // Tween<Color>(begin: Colors.red , end:  Colors.blue);
     // Tween<Size>(begin: Size(100 ,100),end:Size(400 ,400)  ) ;
     // Tween<double>( begin: 1 , end: 0);
   myanimation = Tween(begin: 150.0 , end: 400.0).animate(animationController!);
    myanimation!.addListener(() {
      setState(() {

      });
    });
     super.initState();
     animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: Text("Animation"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // animationController!.forward();
           setState(() {
             // animationController!.forward();
              // start to animate
             animationController!.repeat();
           });
        },
        child: Icon(Icons.forward),
      ),
      body:Center(
        child: Stack(
           children: [ 
             Positioned(
                  top: myanimation!.value,
                 left:  MediaQuery.of(context).size.width /3.0,

                 child: ScaleTransition(
                   scale:animationController!,
                   child: Icon(

               Icons.check_circle ,
               size: 150,
               color: Colors.yellow,
             ),
                 ))
           ],
        ),
      ),
    );
  }
}

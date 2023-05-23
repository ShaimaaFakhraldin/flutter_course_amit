import 'package:flutter/material.dart';

class ChangeColorAndSize extends StatefulWidget {
  const ChangeColorAndSize({Key? key}) : super(key: key);

  @override
  State<ChangeColorAndSize> createState() => _ChangeColorAndSizeState();
}

class _ChangeColorAndSizeState extends State<ChangeColorAndSize> with SingleTickerProviderStateMixin  {

  Animation? colorAnimation;
  Animation? sizeAnimation;
  AnimationController? animationController ;
  @override
  void initState() {
    animationController = AnimationController(vsync: this ,duration: Duration(seconds: 2));
  // Tween<Color>
    colorAnimation = ColorTween( begin: Colors.blue , end:  Colors.red).animate(animationController!);
    sizeAnimation = Tween<double>( begin:  100.0 , end:  200).animate(animationController!);
     super.initState();
     animationController!.addListener(() {
       setState(() {

       });
     });
     animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chane color and size"),),
      body:
      Center(
        child: Container(
          height:sizeAnimation!.value,
          width: sizeAnimation!.value,
          color :colorAnimation!.value
        ),
      ),
    );
  }
}

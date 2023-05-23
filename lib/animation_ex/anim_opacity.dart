import 'package:flutter/material.dart';

class AnimationOpasty extends StatefulWidget {
  const AnimationOpasty({Key? key}) : super(key: key);

  @override
  State<AnimationOpasty> createState() => _AnimationOpastyState();
}

class _AnimationOpastyState extends State<AnimationOpasty> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
      ),
      body: Container(
        color: Colors.purple,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity:_opacity,
                child: Text(
                  "Hide me",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 0;
                  });
                },
                child: Text("Hiden animate opacity"  , style:  TextStyle(fontSize: 20),)) ,


            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 1;
                  });
                },
                child: Text(" show animate opacity"  , style:  TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}

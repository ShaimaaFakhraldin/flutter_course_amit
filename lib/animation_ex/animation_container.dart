import 'package:flutter/material.dart';

class AinmationContainerEx extends StatefulWidget {
  const AinmationContainerEx({Key? key}) : super(key: key);

  @override
  State<AinmationContainerEx> createState() => _AinmationContainerExState();
}

class _AinmationContainerExState extends State<AinmationContainerEx> {
   Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
         title: Text("AnimatedContainer"),
      ),
      body:  AnimatedContainer(
        width: double.infinity,
        duration: const Duration(seconds: 3),
        color: color,
        child: Column(
          children: [
             Text("Container"),
             SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                color = Colors.orange;
              });
            }, child: Text("Change color"))
          ],
        ),
      ),
    );
  }
}

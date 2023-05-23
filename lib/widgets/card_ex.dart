import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: Text("Card Example"),
      ),
      body:  Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
             Card(
               elevation: 20,
              color: Colors.red,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
             )

          ],
        ),
      ),

    );
  }
}

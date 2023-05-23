import 'package:flutter/material.dart';

class HomeBattom extends StatelessWidget {
  const HomeBattom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Home" ,style: TextStyle(fontSize: 30),),
    );
  }
}

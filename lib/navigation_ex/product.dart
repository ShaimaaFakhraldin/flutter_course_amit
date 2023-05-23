import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final int productId ;
  const ProductDetails({Key? key , required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Show arguments  example"),
      ),
      body: Center(
        child: Text(

          "argument value  : $productId" ,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,

        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  String getStatus(){
    if (result < 18.5){
      return "UnderWeight";
    } else if (result < 24.9){
      return "NormalWeight";
    } else if (result < 29.9){
      return "OverWeight";
    } else {
      return "Obese";
    }
  }

  Color getStatuscolor(){
    if (result < 18.5){
      return Color(0xFF60bcf1);
    } else if (result < 24.9){
      return Color(0xFF9fcb5a);
    } else if (result < 29.9){
      return Color(0xFFf68d1c);
    } else {
      return Color(0xFFf2593f);
    }
  }

  const ResultScreen({super.key , required this.result}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xFF0a0c21),
      appBar: AppBar(
        backgroundColor: Color (0xFF0a0c21),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios) , color: Colors.white,),
        title: Text("Result" ,
        style: TextStyle(
          color: Colors.white ,
          fontSize: 27,
        ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text
            (getStatus() ,
            style: TextStyle(
              color: getStatuscolor(),
              fontSize: 25,
            ),
            ),
            Text
            (result.toStringAsFixed(2) ,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
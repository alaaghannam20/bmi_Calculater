// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pmi_calculater/page/result_Screen.dart';
import 'package:pmi_calculater/widget/custom_botton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int age = 30;
   int weight = 80;
   int height = 174;
   bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a0c21),
      appBar: AppBar(
        backgroundColor:Color(0xFF0a0c21), 
        title: Text("bmi Calculater" ,
        style: TextStyle(
        color: Colors.white ,
        fontSize: 20,
        ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
               children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (isMale)? Color(0xffeb1555) : Color(0xFF1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_rounded ,
                            color: Colors.white ,
                            size: 60,
                          ),
                          Text("Male" , 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (!isMale)? Color(0xffeb1555) : Color(0xFF1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                         child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_rounded ,
                            color: Colors.white ,
                            size: 60,
                          ),
                          Text("Female" , 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                    ),
                  ),
                  ),
               ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                color: Color (0xff1d1e33),
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text ("Height",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text (height.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                         Text ("cm",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 200,
                    activeColor: Color(0xFFeb1555),
                    inactiveColor: Color(0xFF525365),
                   onChanged: (value){
                    setState(() {
                     height = value.toInt();
                    });
                   }
                   ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age" ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        SizedBox(height: 7),
                         Text(age.toString() ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        Row (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                               onPressed: (){
                                setState(() {
                                  age --;
                                });
                               },
                             icon:Icon(Icons.remove),
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xff4b4e5d),
                            ),
                            ),
                            IconButton.filled(
                               onPressed: (){
                                setState(() {
                                  age ++;
                                });
                               },
                             icon:Icon(Icons.add),
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xff4b4e5d),
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                    ),
                    SizedBox(width: 8),
                       Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight" ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        SizedBox(height: 7),
                         Text(weight.toString() ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        Row (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                               onPressed: (){
                                setState(() {
                                  weight --;
                                });
                               },
                             icon:Icon(Icons.remove),
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xff4b4e5d),
                            ),
                            ),
                            IconButton.filled(
                               onPressed: (){
                                setState(() {
                                  weight ++;
                                });
                               },
                             icon:Icon(Icons.add),
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xff4b4e5d),
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                    ),

                ],
        
              ),
            ),
           
            CustomBotton(text: "Calculater" ,
            onPressed: (){
              double heightInMeters = height / 100;
              double result = weight / (heightInMeters * heightInMeters);
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                return ResultScreen(result : result);
            } 
              ));
              },
            ),
          ],
        ),
      ),
      
    );
  }
}

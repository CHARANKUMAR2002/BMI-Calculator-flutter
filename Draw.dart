import 'package:bmi_calculator/About.dart';
import 'package:bmi_calculator/Normal.dart';
import 'package:bmi_calculator/Obesity.dart';
import 'package:bmi_calculator/OverWeight.dart';
import 'package:bmi_calculator/UnderWeight.dart';
import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class draw extends StatefulWidget {
  @override
  _drawState createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              color: Colors.green,
              width: double.infinity,
              height: 250,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0xffFF0048),
                shadowColor: Color(0xffFF0048),
                child: Image(image: AssetImage('images/BMI.png'),
                ),
              ),
            ),
            Divider(height: 5,),
            ListTile(
              title: Text("BMI Calculator", style: TextStyle(color: Colors.white),),
              tileColor: Colors.blue,
              leading: Icon(Icons.calculate_outlined, color: Colors.white),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BMIApp()));
              },
            ),
            Divider(height: 5,),
            ListTile(
              tileColor: Colors.pink,
              title: Text("Codition : UnderWeight", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.error_outline, color: Colors.white,),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => underweight()));
              },
            ),
            Divider(height: 5,),
            ListTile(
              tileColor: Colors.green,
              title: Text("Codition : Normal", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.download_done_sharp, color: Colors.white,),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => normal()));
              },
            ),
            Divider(height: 5,),
            ListTile(
              tileColor: Colors.deepOrange,
              title: Text("Codition : OverWeight", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.warning, color: Colors.white,),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => overweight()));
              },
            ),
            Divider(height: 5,),
            ListTile(
              tileColor: Colors.red,
              title: Text("Codition : Obesity", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.error_rounded, color: Colors.white,),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => obesity()));
              },
            ),
             Divider(height: 5,),
            ListTile(
              tileColor: Colors.purple,
              title: Text("Calorie Calculator", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.fireplace_rounded,color: Colors.white,),
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => about()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

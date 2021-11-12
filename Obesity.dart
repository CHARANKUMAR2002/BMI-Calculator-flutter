import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Draw.dart';

class obesity extends StatefulWidget {
 

  @override
  _obesityState createState() => _obesityState();
}

class _obesityState extends State<obesity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Condition : Obesity"),
        backgroundColor: Colors.red,
        elevation: 20,
        shadowColor: Colors.red,
      ),
      drawer: draw(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Card(
                color: Colors.red,
                elevation: 20,
                child: Image(image: AssetImage("images/obesity.jpg"),fit: BoxFit.fill,)
              ),
            ),
            Container(
              width: double.infinity,
              height: 560,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.red,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Obesity Conition Occurs When Your BMI Ranges ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "From 30 & Above.\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "\n1) Drink Water, Especially \n\t   Before Meals. \n2) Eat Eggs For Breakfast.\n3) Drink Coffee (Preferably \n\t   Black).\n4) Drink Green Tea.\n5) Cut Back on Added Sugar.\n6) Exercise Portion Control or \n\t   Count Calories.\n7) Keep Healthy Food Around in Case You Get Hungry.\n8) Chew More Slowly.\n9) Eat More Fiber\n10) Lift Weights",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () async {
                        final url_list = [
                          "https://www.med.umich.edu/pfans/_pdf/hetm-2015/0115-smalltipstolosebig.pdf",
                          "https://www.worldobesity.org/downloads/healthy_voices_downloads/HV_Image_guidelines.pdf",
                          "https://www.oecd.org/health/health-systems/Heavy-burden-of-obesity-Policy-Brief-2019.pdf",
                          "https://www.healthline.com/nutrition/9-weight-loss-diets-reviewed#TOC_TITLE_HDR_5"
                        ];
                        final url = (url_list..shuffle()).first;
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          Fluttertoast.showToast(
                              msg: "Please Check Your Network",
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              gravity: ToastGravity.BOTTOM);
                        }
                      },
                      child: Text(
                        "More Get Tips !",
                        style: TextStyle(color: Colors.black),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ],
                ),
              ),
            ),
 
          ],
        ),
      ),
    );
  }
}
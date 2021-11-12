import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Draw.dart'

class BMIApp extends StatefulWidget {
  @override
  _BMIAppState createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  Random random = new Random();
  double _height = 0.0;
  double _weight = 0.0;
  int _bmi = 0;
  String _condition = "";

  @override
  Widget build(BuildContext context) {
    Future normaldialog(BuildContext context, String message) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                "Your BMI Conditon Is Normal !",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              content: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                RaisedButton(
                  onPressed: () async {
                    const url =
                        "https://www.google.com/maps/search/gym+near+me/";
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "GYM Near Me",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.blue,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Yeah!",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.green,
                  color: Colors.white,
                )
              ],
            );
          });
    }

    Future nondialog(BuildContext context, String message) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                "No Data Input !",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
              content: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.blue,
                  color: Colors.white,
                )
              ],
            );
          });
    }

    Future overdialog(BuildContext context, String message) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                "Your BMI Condition Is OverWeight",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepOrange,
              content: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                RaisedButton(
                  onPressed: () async {
                    const url =
                        "https://www.google.com/maps/search/nutrition+near+me/";
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Nutrition Near Me",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.blue,
                  color: Colors.white, 
                ),
                RaisedButton(
                  onPressed: () async {
                    final url_list = [
                      "https://www.who.int/news-room/fact-sheets/detail/healthy-diet",
                      "https://www.medicalnewstoday.com/articles/303409",
                      "https://www.ucsfhealth.org/education/guidelines-for-losing-weight",
                      "https://www.everydayhealth.com/diet-and-nutrition/diet/tips-weight-loss-actually-work/",
                      "https://www.nhs.uk/live-well/healthy-weight/12-tips-to-help-you-lose-weight/",
                      "https://medlineplus.gov/weightcontrol.html",
                      "https://patient.info/healthy-living/weight-loss-weight-reduction"
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Get Tips!",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.deepOrange,
                  color: Colors.white,
                )
              ],
            );
          });
    }
    
    Future obsdialog(BuildContext context, String message) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                "Your BMI Condition Is Obesity",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
              content: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                RaisedButton(
                  onPressed: () async {
                    const url =
                        "https://www.google.com/maps/search/dietitian+near+me/";
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Dietitian Near Me",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.blue,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () async {
                    final url_list = [
                      "https://www.doconline.com/what-we-treat/obesity-weight-loss",
                      "https://www.mayoclinic.org/diseases-conditions/obesity/diagnosis-treatment/drc-20375749",
                      "https://www.dietdoctor.com/weight-loss/how-to-lose-weight",
                      "https://www.qld.gov.au/health/staying-healthy/diet-nutrition/diet",
                      "https://www.lybrate.com/topic/obesity-diet-chart",
                      "https://www.eatingwell.com/article/17375/7-day-diet-meal-plan-to-lose-weight-1200-calories/",
                      "https://healthavenue.org/en/how-to-reduce-your-weight-and-get-rid-of-obesity/"
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Get Tips!",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.red,
                  color: Colors.white,
                )
              ],
            );
          });
    }
    Future underdialog(BuildContext context, String message) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                "Your BMI Condition Is UnderWeight",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.pink,
              content: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                RaisedButton(
                  onPressed: () async {
                    const url =
                        "https://www.google.com/maps/search/gym+near+me/";
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "GYM Near Me",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.blue,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () async {
                    final url_list = [
                      "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/underweight/faq-20058429",
                      "https://www.wikihow.com/Gain-Weight-if-You-Are-Underweight",
                      "https://www.ucsfhealth.org/education/guidelines-for-losing-weight",
                      "https://lifesum.com/nutrition-explained/the-dangers-of-being-underweight-and-what-you-can-do-to-help-yourself",
                      "https://www.keralaayurveda.biz/blog/gain-weight-naturally-using-ayurveda",
                      "https://www.livestrong.com/article/262680-how-to-gain-weight-on-vegetarian-diet/",
                      "https://www.banyanbotanicals.com/info/ayurvedic-living/living-ayurveda/health-guides/weight-management-guide/an-ayurvedic-approach-to-gaining-weight/"
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
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Get Tips!",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.black),
                  ),
                  splashColor: Colors.pink,
                  color: Colors.white,
                )
              ],
            );
          });
    }


    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        elevation: 20,
      ),
      drawer: draw(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              height: 210,
              width: double.infinity,
              child: Card(
                color: Colors.green,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text("  BMI",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0)),
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        child: Text(
                          "$_bmi\t",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: " Condition : ",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: "$_condition",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Height : ",
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: "$_height cm",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Slider(
                      value: _height,
                      min: 0,
                      max: 300,
                      onChanged: (height) {
                        setState(() {
                          _height = height;
                        });
                      },
                      divisions: 300,
                      label: "$_height",
                      activeColor: Colors.indigo,
                      inactiveColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Weight : ",
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: "$_weight Kg",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Slider(
                      value: _weight,
                      min: 0,
                      max: 200,
                      onChanged: (weight) {
                        setState(() {
                          _weight = weight;
                        });
                      },
                      divisions: 200,
                      label: "$_weight",
                      activeColor: Colors.red,
                      inactiveColor: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (_weight == 0.0 || _height == 0.0) {
                              _condition = "";
                              _bmi = 0;
                              nondialog(context,
                                  "Slide The Sliders To Set The Value To Calculate Your BMI");
                            } else {
                              _bmi = (_weight /
                                      ((_height / 100) * (_height / 100)))
                                  .round()
                                  .toInt();
                              if (_bmi >= 18.5 && _bmi <= 25) {
                                _condition = "Normal";
                                final list = [
                                  "Great! Keep It Up!",
                                  "Good Work! You Are Doing Great",
                                  "Fantastic! You Have Maintained Your Body Well",
                                  "Keep Going!"
                                ];
                                final nm = (list..shuffle()).first;
                                normaldialog(context, nm);
                              } else if (_bmi > 25 && _bmi <= 30) {
                                _condition = "OverWeight";
                                final list = [
                                  "You Should Handle Your Diet Properly! Would You Like To Get Any Tips On Diet?",
                                  "Please Take Care Of Your Health And Follow Some Diets",
                                  "Time To Bring A Change In Your Diet!",
                                ];
                                final om = (list..shuffle()).first;
                                overdialog(context, om);
                              } else if (_bmi > 30) {
                                _condition = "Obesity";
                                final list = [
                                  "You Seriously Have To Handle Your Diet Properly! Would You Like To Get Any Tips On Diet?",
                                  "Please Be Aware Of Your Health And Follow Some Strict Diets",
                                  "Time To Make A Real Change In Your Diet!",
                                  "Please Consult A Dietitian Immediatly!"
                                ];
                                final obm = (list..shuffle()).first;
                                obsdialog(context, obm);
                              } else {
                                _condition = "UnderWeight";
                                final list = [
                                  "You Have To Buff Up You Body !",
                                  "Eat Well And Take Care Of Your Health",
                                  "Do Not Skip Any Meal",
                                  "Eat Foods That Have More Protein Content"
                                ];
                                final un = (list..shuffle()).first;
                                underdialog(context, un);
                              }
                            }
                          });
                        },
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        color: Colors.green,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

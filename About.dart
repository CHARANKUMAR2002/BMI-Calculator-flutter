import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Draw.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  int select = 0;
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController Age = TextEditingController();
  List<String> status = [
    "Sedentary",
    'Lightly Active',
    'Moderatelt Active',
    'Very Active',
    'Extra Active'
  ];
  var selected;
  double calorie = 0.0;

  Widget customRadio(String text, int index) {
    return RaisedButton(
      onPressed: () {
        select = index;
        setState(() {
          String Height = height.value.text;
          String Weight = weight.value.text;
          String age = Age.value.text;
          if (index == 0) {
            print("Error");
          } else if (index == 1) {
            var h = double.parse(Height);
            var w = double.parse(Weight);
            var a = double.parse(age);
            var BMR = ((10 * w) + (6.25 * h) - (5 * a) + 5);
            if (selected == "Sedentary") {
              var value = 1.2;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Lightly Active") {
              var value = 1.375;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Moderatelt Active") {
              var value = 1.55;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Very Active") {
              var value = 1.725;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Extra Active") {
              var value = 1.9;
              var c = BMR * value;
              calorie = c;
            }
          } else if (index == 2) {
            var h = double.parse(Height);
            var w = double.parse(Weight);
            var a = double.parse(age);
            var BMR = ((10 * w) + (6.25 * h) - (5 * a) + 5);
            if (selected == "Sedentary") {
              var value = 1.2;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Lightly Active") {
              var value = 1.375;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Moderatelt Active") {
              var value = 1.55;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Very Active") {
              var value = 1.725;
              var c = BMR * value;
              calorie = c;
            } else if (selected == "Extra Active") {
              var value = 1.9;
              var c = BMR * value;
              calorie = c;
            }
          }
        });
      },
      child: Text(
        text,
        style:
            TextStyle(color: (select == index) ? Colors.white : Colors.black),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: (select == index) ? Colors.black : Colors.white,
    );
  }

  String url = "https://www.calories.info/";
  Future nondialog(BuildContext context, String message) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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

  Future showdialog(BuildContext context, var message) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              "Your Result",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.purple,
            content: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              RaisedButton(
                onPressed: () async {
                  if (await canLaunch(url)) {
                    launch(url);
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please Check Your Network",
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        gravity: ToastGravity.BOTTOM);
                  }
                },
                child: Text(
                  "Calories In Food Items",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                splashColor: Colors.blue,
                elevation: 20,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.black),
                ),
                splashColor: Colors.purple,
                color: Colors.white,
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Calorie Calculator"),
        backgroundColor: Colors.purple,
        shadowColor: Colors.purple,
        centerTitle: true,
      ),
      drawer: draw(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 610,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.purple,
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: TextField(
                        controller: height,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.height_outlined, color: Colors.white),
                          labelText: "Enter Height",
                          hintText: "cm",
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextField(
                        controller: weight,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.monitor_weight_outlined,
                              color: Colors.white),
                          labelText: "Enter Weight",
                          hintText: "Kg",
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextField(
                        controller: Age,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                          labelText: "Enter Age",
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50.0)),
                        ),
                      ),
                    ),
                    DropdownButton(
                      items: status
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.white),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (select) {
                        setState(() {
                          selected = select;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.white,
                      ),
                      value: selected,
                      dropdownColor: Colors.purple,
                      hint: Text(
                        "Physical Activity Level     ",
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Select Your Sex ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        customRadio("Male", 1),
                        SizedBox(
                          width: 10,
                        ),
                        customRadio("Female", 2),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (height.text == "" || weight.text == "" || Age.text == "" || selected == "" || select ==0) {
                            nondialog(context,
                                "Provide All Details To Calculate Calorie");
                          } else {
                            var cl = calorie - 400;
                            var cg = calorie + 600;
                            String result =
                                "Maintain Weight => $calorie cal/Day \n\nLose Weight => $cl cal/Day\n\nGain Weight => $cg cal/Day";
                            showdialog(context, result);
                          }
                        });
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      splashColor: Colors.purple,
                      elevation: 20,
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

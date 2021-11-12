import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Draw.dart';

class normal extends StatefulWidget {


  @override
  _normalState createState() => _normalState();
}

class _normalState extends State<normal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Condition : Normal"),
        backgroundColor: Colors.green,
        elevation: 20,
        shadowColor: Colors.green,
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
                elevation: 20,
                child: Image(image: AssetImage("images/normal.PNG"),fit: BoxFit.fill,))
              ),
            Container(
              width: double.infinity,
              height: 550,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green,
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
                              "Normal Conition Occurs When Your BMI Ranges Between ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "18.5 - 24.9.\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "\n1) Exercise at least 60-90 \n\t  minutes most days of the \n\t  week. \n2) Follow a healthy diet.\n3) Limit the time you spend \n\t   being physically inactive.\n4) A balanced and nutritious \n\t  diet goes a long way in \n\t  helping you achieve a\n\t  healthy body weight.\n5) Include more veggies and \n\t   whole foods in your diet.\n6) Also, build a consistent \n\t  daily sleep schedule.",
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
                          "https://www.mdanderson.org/content/dam/mdanderson/documents/publications/focused-on-health/bmiFOH2.pdf",
                          "https://en.wikipedia.org/wiki/Body_mass_index",
                          "https://www.cdc.gov/nccdphp/dnpa/nutrition/pdf/CDC_5-A-Day.pdf"
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
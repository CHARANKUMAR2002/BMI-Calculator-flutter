import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Draw.dart';

class overweight extends StatefulWidget {
  

  @override
  _overweightState createState() => _overweightState();
}

class _overweightState extends State<overweight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Condition : OverWeight"),
        backgroundColor: Colors.deepOrange,
        elevation: 20,
        shadowColor: Colors.deepOrange,
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
                color: Colors.deepOrange,
                elevation: 20,
                child: Image(image: AssetImage("images/overweight.jpg"),fit: BoxFit.fill,)
              ),
            ),
            Container(
              width: double.infinity,
              height: 480,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.deepOrange,
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
                              "OverWeight Conition Occurs When Your BMI Ranges Between ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "25 - 29.9.\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "\n1) Consume less “bad” fat and \n\t  more “good” fat. \n2) Consume less processed \n\t   and sugary foods.\n3) Eat more servings of \n\t   vegetables and fruits.\n4) Eat plenty of dietary fiber.\n5) Focus on eating low–\n\t   glycemic index foods.\n6) Engage in regular aerobic \n\t   activity.",
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
                          "https://www.nhlbi.nih.gov/files/docs/resources/heart/tips.pdf",
                          "https://naldc.nal.usda.gov/download/1759271/PDF",
                          "https://www.cdc.gov/ncbddd/disabilityandhealth/documents/obesityFactsheet2010.pdf"
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
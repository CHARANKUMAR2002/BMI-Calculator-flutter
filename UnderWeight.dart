import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Draw.dart';
import 'package:url_launcher/url_launcher.dart';

class underweight extends StatefulWidget {
  @override
  _underweightState createState() => _underweightState();
}

class _underweightState extends State<underweight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Condition : UnderWeight"),
        backgroundColor: Colors.pink,
        elevation: 20,
        shadowColor: Colors.pink,
      ),
      drawer: draw(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: SingleChildScrollView(
                child: Card(
                  elevation: 20,
                  color: Colors.black,
                  child: Image(image: AssetImage("images/uw.PNG"), fit:BoxFit.fitHeight),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 430,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.pink,
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
                              "UnderWeight Conition Occurs When Your BMI Ranges Below ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "18.5.\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "\n1) Eat more frequently. \n2) When you're underweight,\n\t   you may feel full faster.\n3) Choose nutrient-rich foods.\n4) Try smoothies and shakes.\n5) Watch when you drink.\n6) Make every bite count.\n7) Have an occasional treat.\n8)Exercise.",
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
                          "https://uccs.edu/healthcircle/sites/healthcircle/files/inline-files/Weight%20Gain.pdf",
                          "https://www.lipid.org/sites/default/files/heart-healthy_eating_if_you_are_underweight_final.pdf",
                          "https://www.healthstandnutrition.com/wp-content/uploads/2014/08/HSN-Underweight_-How-To-Gain-Weight-The-Healthy-Way.pdf"
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

import 'package:flutter/material.dart';
import 'package:project/Custom_widgets/EmergencyButton.dart';
import 'package:project/Custom_widgets/roundedAppBar.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w1 = MediaQuery.of(context).size.width / 2;
    double h1 = MediaQuery.of(context).size.height / 7;

    return Scaffold(
      appBar: RoundedAppBar('Emergency'),
      body: Container(
        padding: EdgeInsets.fromLTRB(w1 / 3.5, h1, w1 / 3.5, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            EmergencyButton(
              h: h1 / 2,
              w: w1 * 6,
              text: 'KITCC Emergency Contact',
              fw: FontWeight.bold,
              fontSize: 15,
              clr: Colors.red,
              onPressed: (){
                UrlLauncher.launch('tel://03313242233');
              },
              im: Image(
                image: AssetImage('assets/phone.png'),
                width: w1/4,
                height: h1/3,
              ),
            ),
            SizedBox(
              height: h1 / 4,
            ),
            EmergencyButton(
              h: h1 / 2,
              w: w1 * 6,
              text: 'Ambulance',
              fw: FontWeight.bold,
              fontSize: 15,
              clr: Colors.red,
              onPressed: (){
                UrlLauncher.launch('tel://1122');
              },
              im: Image(
                image: AssetImage('assets/ambulance.png'),
                width: w1 / 4,
                height: h1 / 3,
              ),
            ),
            SizedBox(
              height: h1 / 4,
            ),
          ],
        ),
      ),
    );
  }
}
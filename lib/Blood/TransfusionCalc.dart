import 'package:flutter/material.dart';
import 'package:project/Custom_widgets/roundedAppBar.dart';

// class TransfusionCalc extends StatefulWidget {
//   @override
//   _TransfusionCalc createState() => _TransfusionCalc();
// }

class TransfusionDose extends StatelessWidget {
  final String amount;

  TransfusionDose(this.amount);

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:
            RoundedAppBar('Transfusion Dosage'), // same appBar as Main Menu.
        body: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Text(
                      amount + ' ml', // make this a variable that is passed
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SanFrancisco',
                        fontSize: 20,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 0)
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/blood_bag.png'),
                      alignment: Alignment.center,
                      height: h1/1.4,
                      width: w1/1.4,
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}


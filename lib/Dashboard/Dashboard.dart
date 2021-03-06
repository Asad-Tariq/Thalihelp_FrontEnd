import 'package:flutter/material.dart';
import 'package:project/Alarm/Reminder.dart';
import 'package:project/Calendar/Calendar.dart';
import 'package:project/Custom_widgets/CustomBtn.dart';
import 'package:project/Food/FoodTypes.dart';
import 'package:project/Calculator/Calculator.dart';
import 'package:project/Emergency/Emergency.dart';
import 'package:project/main.dart';
import 'package:project/Custom_widgets/roundedAppBar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height / 8;
    double w1 = (MediaQuery.of(context).size.width) / 4;
    double hsmall = MediaQuery.of(context).size.height / 20;
    double wsmall = MediaQuery.of(context).size.width / 5;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // bottomNavigationBar: BottomBar(), // add gradient here possibly
          //  extendBodyBehindAppBar: true,
          appBar: RoundedAppBar('Main Menu'), //AppBar
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 0, 0, h1/2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                //Alarm Button
                Button(
                    h: h1,
                    w: w1 * 2.5,
                    im: Image(
                      image: AssetImage('assets/icons/alarm.png'),
                      width: 40,
                      color: Color(0xffba2529),
                    ),
                    text: 'Alarm',
                    meth: () => Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (context, animation, animationTime) {
                          return Reminder();
                        }
                        )
                    )
                ),
                SizedBox(
                  width: w1 / 4,
                  height: h1 / 4,
                ),
                // 4 Buttons
            Container(
              padding: EdgeInsets.fromLTRB(w1 / 1.2, 0, w1 / 1.2, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      //Calculator
                      Button(
                          h: h1,
                          w: w1,
                          im: Image(
                            image: AssetImage('assets/icons/medicine.png'),
                            width: 50,
                            color: Color(0xffba2529),
                          ),
                          text: "Calculator",
                          meth: () => Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (context, animation, animationTime) {
                                return Calculator();
                              }
                              )
                          )
                      ),
                      SizedBox(
                        width: w1 / 4,
                        height: h1 / 4,
                      ),
                      // Calendar
                      Button(
                        h: h1,
                        w: w1,
                        im: Image(
                          image: AssetImage('assets/icons/calendar1.png'),
                          width: 50,
                          color: Color(0xffba2529),
                        ),
                        text: "Calender",
                        meth: () => Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation, animationTime) {
                              return Calendar();
                        })),
                      )
                    ],
                  ),
                  SizedBox(
                    width: w1 / 4,
                    height: h1 / 4,
                  ),
                  Column(
                    children: [
                      // Radio
                      Button(
                        h: h1,
                        w: w1,
                        // ic: Icons.radio,
                        im: Image(
                          image: AssetImage('assets/fahad.png'),
                          height: h1 / 2,
                          width: w1 / 2,
                        ),
                        text: "Food Intake",
                        meth: () => Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation, animationTime) {
                          return FoodTypes();
                        })),
                      ),
                      SizedBox(
                        width: w1 / 4,
                        height: h1 / 4,
                      ),
                      //Emergency
                      Button(
                        h: h1,
                        w: w1,
                        ic: Icons.local_hospital_sharp,
                        text: "Emergency",
                        meth: () => Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation, animationTime) {
                              return Emergency();
                            })),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                SizedBox(
                  width: w1 / 6,
                  height: h1 / 6,
                ),
            //Logout
            Button(
              h: hsmall,
              w: wsmall,
              // ic: Icons.logout,
              text: 'Logout',
              fw: FontWeight.bold,
              meth: () => Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, animationTime) {
                    return LoginScreen();
                  })),
            )
              ],
            ),
          ),
        )
    );
  }
}
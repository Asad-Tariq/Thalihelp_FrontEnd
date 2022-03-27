import 'package:flutter/material.dart';
import 'package:project/Custom_widgets/roundedAppBar.dart';
import 'package:project/Dashboard/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThaliHelp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SafeArea(
        child: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  var username, password, token;
  @override
  Widget build(BuildContext context){
    double h1 = MediaQuery.of(context).size.height / 8;
    double w1 = (MediaQuery.of(context).size.width) / 4;
    double hsmall = MediaQuery.of(context).size.height / 20;
    double wsmall = MediaQuery.of(context).size.width / 5;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: RoundedAppBar('Login & Register'),
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(w1/2, 0, w1/2, h1/2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontFamily: 'SanFrancisco',
                      fontSize: 15.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (val){
                    username = val;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'SanFrancisco',
                      fontSize: 15.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    )
                  ),
                  onChanged: (val){
                    password = val;
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                    onPressed: (){
                      if (username.contains('Username') && password.contains('Password')) {
                        Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation, animationTime) {
                              return Dashboard();
                            }
                        )
                        );
                      }
                    },
                    child: Text('Login')
                ),
              ],
            ),
          ),
        )
    );
  }
}


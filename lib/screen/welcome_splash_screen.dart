import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushNamed(context, '');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 45,left: 100,top: 20),
            child: Text(
              'MOMMA.',
              style: TextStyle(
                letterSpacing: 9,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 140,vertical: 20),
            child: Center(
              child: Text(
                'Fashons',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
            )
          ),
          Image.asset(
            'images/img_splash.png',
            height: 440,
          ),
          Card(
            color: Colors.transparent,
            elevation: 0,
            child: Center(
              child: Container(
                  child: Text(
                'ــــــــــــ',
                style: TextStyle(
                  fontSize: 40,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

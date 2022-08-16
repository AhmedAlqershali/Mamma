import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pref/shared_pref_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // IconButton(
          //   onPressed: () async {
          //     bool cleared = await SharedPrefController().clear();
          //     if(cleared) {
          //       Navigator.pushReplacementNamed(context, '/login_screen');
          //     }
          //   },
          //   icon: Icon(Icons.logout),
          // ),
          SizedBox(
            height: 80,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                child: Text(
                  'MOMMA',
                  style: TextStyle(
                    letterSpacing: 6,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 150, vertical: 70),
                child: Text(
                  'Fashons',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              Image.asset(
                'images/img_splash.png',
                color: Colors.white.withOpacity(0.1),
                colorBlendMode: BlendMode.modulate,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 210),
                child: Text(
                  'Please wait...',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10),
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

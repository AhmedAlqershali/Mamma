import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,

          elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
    body:ListView(
        children: [
          Container(
              child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 70,
                backgroundImage: AssetImage('images/img_bio.png'),
              ),
              SizedBox(height: 15),
              Text(
                'Bad Man ',
                style: TextStyle(
                  color: Color(0xff444657),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Bad Man@gmail.com',
                style: TextStyle(
                  color: Color(0xff87879D),
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
            ],
          ))),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'About',
              style: TextStyle(
                color: Color(0xff474559),
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                text:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical professor',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text: 'Read More',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/img_wemon.png',
                    height: 150,
                  ),
                  Image.asset('images/img_wemon.png', height: 150),
                ],
              ),
              Image.asset('images/img_wemon.png', height: 150),
            ],
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            elevation: 0,
            child: Center(
              child: Text(
                'ــــــــــــ',
                style: TextStyle(
              fontSize: 40,
                ),
              ),
            ),
          )
        ],
      ));

  }
}

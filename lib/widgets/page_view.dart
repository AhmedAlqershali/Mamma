import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewPage extends StatelessWidget {
  ViewPage(
      {required this.img, required this.name, required this.subname, Key? key})
      : super(key: key);

  late String img;
  late String name;
  late String subname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset('images/$img'),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            children: [
              Text(
                '$name',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF23203F),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '$subname',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  color: Color(0xFF716F87),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

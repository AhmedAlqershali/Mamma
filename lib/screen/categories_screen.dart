import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Cate(img: 'img_wemon.png', text: 'Wemon\n Fashon'),
        Divider(
          thickness: 1,
          endIndent: 50,
        ),
        Cate2( text: 'Wemon\n Fashon',img: 'img_wemon.png'),
        Divider(
          thickness: 1,
          endIndent: 50,
        ),
        Cate(img: 'img_wemon.png', text: 'Wemon\n Fashon'),
        Divider(
          thickness: 1,
          endIndent: 50,
        ),
        Cate2(img: 'img_wemon.png', text: 'Wemon\n Fashon'),
        Divider(
          thickness: 1,
          endIndent: 50,
        ),

      ],
    );
  }

}

class Cate extends StatelessWidget {
  Cate({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);
  String img;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Row(
        children: [
          Image.asset(
            'images/$img', height: 150,
            fit: BoxFit.cover,
          ),
          Text(
            '$text',
            style: GoogleFonts.nunito(
              color: Color(0xff23203F),
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
class Cate2 extends StatelessWidget {
  Cate2({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);
  String img;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Row(
        children: [

          Text(
            '$text',
            style: GoogleFonts.nunito(
              color: Color(0xff23203F),
              fontSize: 30,
            ),
          ),
          Image.asset(
            'images/$img', height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}













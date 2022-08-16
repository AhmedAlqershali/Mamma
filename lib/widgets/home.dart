import 'package:flutter/material.dart';
import 'package:mamma/widgets/select_page.dart';
class Home extends StatelessWidget {
   Home({Key? key,required this.img}) : super(key: key);
String img;



  @override
  Widget build(BuildContext context) {

    return Column(
        children: [
          Image.asset('images/$img'),


        ],
      );

  }
}

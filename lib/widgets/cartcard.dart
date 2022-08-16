import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatefulWidget {
  CartCard(
      {Key? key,
      required this.name,
      required this.subname,
      required this.img,
      required this.notsalary,
      required this.salary})
      : super(key: key);
  late String img;
  late String name;
  late String subname;
  late String salary;
  late String notsalary;

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            'images/${widget.img}',
            height: 100,
          ),
          Column(
            children: [
              Text('${widget.name}'),
              Text('${widget.subname}'),
              Row(
                children: [
                  Text('${widget.salary}\$ '),
                  Text(
                    '\$ ${widget.notsalary} ',
                    style: GoogleFonts.nunito(
                        decoration: TextDecoration.lineThrough),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() => --_counter);
                        },
                        child: Text(
                          '-',
                          style: GoogleFonts.cairo(),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white30,
                          minimumSize: Size(0, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(50),
                          ),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 30,
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          _counter.toString(),
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            ++_counter;
                          });
                        },
                        child: Text(
                          '+',
                          style: GoogleFonts.cairo(),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white30,
                          minimumSize: Size(0, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(50),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
              icon: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset('images/img_cancel.png')),
        SizedBox(
          height: 15,
        ),
        Center(
            child: Text(
          "Are you sure you want\n   to cancel this order?",
          style: GoogleFonts.notoSans(
            color: Colors.black,
            fontSize: 25,
          ),
        )),
        SizedBox(
          height: 15,
        ),

        Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                style: ElevatedButton.styleFrom(

                    primary: Color(0xff6A90F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),

                child: Text(
                  '          Cancel          ',
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                child: Text(
                  '        Not Now!        ',
                  style: GoogleFonts.nunito(
                    color: Color(0xff9293A3),
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        )

      ],
    ),

  );
}

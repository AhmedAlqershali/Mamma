import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/select_page.dart';

class BillingScreen extends StatefulWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Billing'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 1000,
            child: PageView(
              onPageChanged: (int value) {
                print('Page: #$value');
                setState(() => _currentPage = value);
              },
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Image.asset(
                    'images/img_visa.png',
                  ),
                )),
                Container(
                    child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Image.asset('images/img_master_card.png'),
                )),
                Container(
                    child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Image.asset(
                    'images/img_pay_pal.png',
                    width: 200,
                  ),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SelectPage(selected: _currentPage == 0),
            SelectPage(
              selected: _currentPage == 1,
              horizontalMargin: 14,
            ),
            SelectPage(
              selected: _currentPage == 2,
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Order Details',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('sub total:'),
              Text(
                '\$50 x 2',
                style: TextStyle(color: Color(0xffA4A4C4)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('sub total:'),
              Text(
                '\$ 100',
                style: TextStyle(color: Color(0xffA4A4C4)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Tax(15%):'),
              Text(
                '\$ 15',
                style: TextStyle(color: Color(0xffA4A4C4)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Total:'),
              Text(
                '\$ 215',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/paymentmode_screen'),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff6A90F2),
                  minimumSize: const Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )),
              child: Text(
                'Checkout',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
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
            ),

        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mamma/widgets/cartcard.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart',style: TextStyle(
          color: Colors.black,
        ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: [
          Text('3 items available'),
          CartCard(
              name: 'Handbag',
              subname: 'from boots category',
              img: 'bag.png',
              notsalary: '250',
              salary: '100'),
          CartCard(
              name: 'Handbag',
              subname: 'from boots category',
              img: 'bag.png',
              notsalary: '250',
              salary: '100'),
          CartCard(
              name: 'Handbag',
              subname: 'from boots category',
              img: 'bag.png',
              notsalary: '250',
              salary: '100'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('sub total:'),
              Text('\$ 100')
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tax(15%):'),
              Text('\$ 15')
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Total:'),
              Text('\$ 215')
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/billing_screen'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                minimumSize: const Size(65, 60),
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

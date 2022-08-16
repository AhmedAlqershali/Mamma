import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessfulScreen> createState() => _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset('images/img_yes.png'),
            SizedBox(
              height: 10,
            ),
            Text('Payment Successful!',style: GoogleFonts.nunito(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              wordSpacing: 5,
              fontSize: 25,
            )
            ),
            SizedBox(
              height: 10,
            ),
            Text('We have emailed you the receipt.',style: GoogleFonts.nunito(
              color: Color(0xff8F8FA6),
              fontWeight: FontWeight.bold,
              wordSpacing: 3,
              fontSize: 18,
            )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75,right: 75),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/otp_screen'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    )),
                child: Text(
                  'Finish',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
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
      ),
    );
  }
}

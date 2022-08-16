import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyMobileNumberScreen extends StatefulWidget {
  const VerifyMobileNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerifyMobileNumberScreen> createState() => _VerifyMobileNumberScreenState();
}

class _VerifyMobileNumberScreenState extends State<VerifyMobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Verify Your Account',
              style:
              GoogleFonts.quicksand(wordSpacing: 4, color: Color(0xff23203F), fontSize: 18,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter your Mobile Number',
              style: GoogleFonts.roboto(wordSpacing: 4,color: Color(0xff9192AE), fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.numberWithOptions(
                  signed: false, decimal: false),

              style: GoogleFonts.nunito(
                color: Colors.black45,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              // obscureText: ,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                counterText: '',

                contentPadding: EdgeInsets.zero,
                hintTextDirection: TextDirection.ltr,
                constraints: BoxConstraints(
                  maxWidth: 320,
                ),

                // errorText: _passwordError,

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.blue,
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 75,right: 75),
              child: ElevatedButton(
                onPressed: () => '1',
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff6A90F2),
                    minimumSize: const Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    )),
                child: Text(
                  'Submit',
                  style: GoogleFonts.nunito(
                    fontSize: 25,

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Card(

              margin: EdgeInsets.symmetric(vertical: 85),
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

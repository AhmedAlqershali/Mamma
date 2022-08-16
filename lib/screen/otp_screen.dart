import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              'We are sending OTP to validate your\n mobile number. Hang on!',
              style: GoogleFonts.roboto(wordSpacing: 4,color: Color(0xff9192AE), fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
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

                        // errorText: _passwordError,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.blue,
                          ),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
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

                        // errorText: _passwordError,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
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

                        // errorText: _passwordError,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
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

                        // errorText: _passwordError,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SMS has been sent to ',
                  style: GoogleFonts.quicksand(
                      color: Color(0xff23203F), fontSize: 18),
                ),
                Text(
                  '1800 123 4567',
                  style: GoogleFonts.quicksand(
                      color: Color(0xff23203F),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/verify_mobile_number_screen'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
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
            SizedBox(height: 120,),
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

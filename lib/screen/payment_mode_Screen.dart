import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PaymentModeScreen extends StatefulWidget {
  const PaymentModeScreen({Key? key}) : super(key: key);

  @override
  State<PaymentModeScreen> createState() => _PaymentModeScreenState();
}

class _PaymentModeScreenState extends State<PaymentModeScreen> {
  int _currentPage = 0;
  String? _numberError;
  String? _ccvError;
  String? _yyError;
 late TextEditingController _numbertextEditingController;
 late TextEditingController _ccvtextEditingController;
 late TextEditingController _yytextEditingController;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numbertextEditingController=TextEditingController();
    _yytextEditingController=TextEditingController();
    _ccvtextEditingController=TextEditingController();

  }
  @override
  void dispose() {
    _numbertextEditingController.dispose();
    _yytextEditingController.dispose();
    _ccvtextEditingController.dispose();
   // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

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
          TextField(
            controller: _numbertextEditingController,


            keyboardType: TextInputType.number,
            enabled: true,
            style: GoogleFonts.nunito(
              color: Colors.black45,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            expands: true,
            minLines: null,
            maxLines: null,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'Number',
              hintMaxLines: 1,

              hintTextDirection: TextDirection.ltr,
              hintStyle: GoogleFonts.nunito(
                color: Colors.black45,
                fontWeight: FontWeight.w300,
              ),
              errorText: _numberError,
              constraints: BoxConstraints(
                // minHeight: 50,
                maxHeight: _numberError == null ? 55 : 75,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.black45,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          TextField(
            controller: _yytextEditingController,


            keyboardType: TextInputType.emailAddress,
            enabled: true,
            style: GoogleFonts.nunito(
              color: Colors.black45,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            expands: true,
            minLines: null,
            maxLines: null,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'MM/YY',
              hintMaxLines: 1,

              hintTextDirection: TextDirection.ltr,
              hintStyle: GoogleFonts.nunito(
                color: Colors.black45,
                fontWeight: FontWeight.w300,
              ),
              errorText: _yyError,
              constraints: BoxConstraints(
                // minHeight: 50,
                maxHeight: _yyError == null ? 55 : 75,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.black45,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          TextField(
            controller: _ccvtextEditingController,


            keyboardType: TextInputType.number,
            enabled: true,
            style: GoogleFonts.nunito(
              color: Colors.black45,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            expands: true,
            minLines: null,
            maxLines: null,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'CCV',
              hintMaxLines: 1,

              hintTextDirection: TextDirection.ltr,
              hintStyle: GoogleFonts.nunito(
                color: Colors.black45,
                fontWeight: FontWeight.w300,
              ),
              errorText: _ccvError,
              constraints: BoxConstraints(
                // minHeight: 50,
                maxHeight: _ccvError == null ? 55 : 75,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.black45,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 75,right: 75),
            child: ElevatedButton(
              onPressed: () => performLogin(),
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )),
              child: Text(
                'Pay with PayPal',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
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
          ),


        ],
      ),
    );
  }
  void performLogin() {
    if (checkData()) {
      Login();
    }
  }

  bool checkData() {
    if (_numbertextEditingController.text.isNotEmpty &&
        _yytextEditingController.text.isNotEmpty&&
        _ccvtextEditingController.text.isNotEmpty) {
      updateErrorsState();
      return true;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Logged in successfully'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blue.shade300,
        duration: const Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );

    updateErrorsState();
    return false;
  }

  void updateErrorsState() {
    setState(() {
      _numberError =
      _numbertextEditingController.text.isEmpty ? 'Enter number' : null;
      _yyError =
      _yytextEditingController.text.isEmpty ? 'Enter MM/YY' : null;
      _ccvError =
      _ccvtextEditingController.text.isEmpty ? 'Enter CCV' : null;
    });
  }
  void Login() async {
    Navigator.pushReplacementNamed(context, '/paymentsuccessful_screen');
  }
}

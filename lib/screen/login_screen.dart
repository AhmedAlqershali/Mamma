import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mamma/pref/shared_pref_controller.dart';

import '../models/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  String? _emailError;
  String? _passwordError;
  bool _showPassword = false;

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigateToRegister;
    // _tapGestureRecognizer.onTap = _navigateToRegister;
  }

  void _navigateToRegister() =>
      Navigator.pushNamed(context, '/register_screen');

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Sign In',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login  to continue your  account ,',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF716F87),
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailTextController,
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
                  hintText: 'Email',
                  hintMaxLines: 1,
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: GoogleFonts.nunito(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                  ),
                  errorText: _emailError,
                  constraints: BoxConstraints(
                    // minHeight: 50,
                    maxHeight: _emailError == null ? 55 : 75,
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
              const SizedBox(height: 10),
              TextField(
                controller: _passwordTextController,
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 1,
                expands: false,
                style: GoogleFonts.nunito(
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                obscureText: !_showPassword,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintMaxLines: 1,
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: GoogleFonts.nunito(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                  ),
                  errorText: _passwordError,
                  constraints: BoxConstraints(
                    // minHeight: 50,
                    maxHeight: _passwordError == null ? 55 : 75,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                    icon: Icon(
                      _showPassword ? Icons.visibility_off : Icons.visibility,
                    ),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => performLogin(),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff6A90F2),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                icon: Icon(Icons.facebook),
                label: Text(
                  'Login in FaceBock',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    wordSpacing: 3,
                  ),
                ),
                onPressed: () => '',
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff4267B2),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 15),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account ',
                    style: GoogleFonts.nunito(
                      color: Color(0xff9391A4),
                      fontSize: 15,
                    ),
                    children: [
                      // TextSpan(text: ' '),
                      TextSpan(
                        text: 'Create Now!',
                        recognizer: _tapGestureRecognizer,
                        style: GoogleFonts.nunito(
                          color: Color(0xff23203F),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      Login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
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
      _emailError =
          _emailTextController.text.isEmpty ? 'Enter email address' : null;
      _passwordError =
          _passwordTextController.text.isEmpty ? 'Enter password' : null;
    });
  }
  void Login() async {
    await SharedPrefController().save(User(email: _emailTextController.text));
    Navigator.pushReplacementNamed(context, '/splash_screen');
  }
}

// print('Email: ${_emailTextController.text}');
// print('Password: ${_passwordTextController.text}');
// ScaffoldMessenger.of(context)
// .showSnackBar(
// SnackBar(
// content: const Text('Logged in successfully'),
// behavior: SnackBarBehavior.floating,
// backgroundColor: Colors.blue.shade300,
// duration: const Duration(seconds: 3),
// ),
// )
// .closed
//     .then((value) {
// Navigator.pushReplacementNamed(context, '/bn_screen');
// });
// // Navigator.pushReplacementNamed(context, '/categories_screen');

import 'package:flutter/material.dart';
import 'package:mamma/pref/shared_pref_controller.dart';
import 'package:mamma/screen/billing_screen.dart';
import 'package:mamma/screen/bn_screen.dart';
import 'package:mamma/screen/cart_screen.dart';
import 'package:mamma/screen/feedback_popup_screen.dart';
import 'package:mamma/screen/home_screen.dart';
import 'package:mamma/screen/login_screen.dart';
import 'package:mamma/screen/otp_screen.dart';
import 'package:mamma/screen/payment_mode_Screen.dart';
import 'package:mamma/screen/payment_successful_screen.dart';
import 'package:mamma/screen/product_screen.dart';
import 'package:mamma/screen/profile_screen.dart';
import 'package:mamma/screen/register_screen.dart';
import 'package:mamma/screen/splash_screen.dart';
import 'package:mamma/screen/verify_mobile_number.dart';
import 'package:mamma/screen/view_Page_screen.dart';
import 'package:mamma/screen/welcome_splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefController().initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: '/view_page_screen',

      routes: {
        '/splash_screen': (context) => SplashScreen(),
        '/welcome_splash_screen': (context) => WelcomeSplashScreen(),
        '/view_page_screen': (context) => ViewPageScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/bn_screen': (context) => BnScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/profile_screen': (context) => ProfileScreen(),
        '/cart_screen': (context) => CartScreen(),
        '/product_screen': (context) => ProductScreen(),
        '/billing_screen': (context) => BillingScreen(),
        '/paymentmode_screen': (context) => PaymentModeScreen(),
        '/paymentsuccessful_screen': (context) => PaymentSuccessfulScreen(),
        '/otp_screen': (context) => OtpScreen(),
        '/verify_mobile_number_screen': (context) => VerifyMobileNumberScreen(),
        '/feedback_popup_screen': (context) => FeedbackPopupScreen(),
      },
    );
  }
}

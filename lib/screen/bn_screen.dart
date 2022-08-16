import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mamma/screen/profile_screen.dart';

import '../models/bn_screen_item.dart';
import 'categories_screen.dart';
import 'home_screen.dart';

class BnScreen extends StatefulWidget {
  const BnScreen({Key? key}) : super(key: key);

  @override
  State<BnScreen> createState() => _BnScreenState();
}

class _BnScreenState extends State<BnScreen> {
  int _currentIndex = 0;
  final List<BnItem> _bnScreens = <BnItem>[
     BnItem(widget: HomeScreen(), title: 'Home' ),
     BnItem(widget: CategoriesScreen(), title: 'Categories'),
     BnItem(widget: ProfileScreen(), title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          _bnScreens[_currentIndex].title,

          style: GoogleFonts.nunito(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          if(_currentIndex!=2)
            Icon(Icons.search),

        ],

      ),
      body: _bnScreens[_currentIndex].widget,

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/img_bio.png'),
                ),
                accountName: Text('Bad Man'),
                accountEmail: Text('BadMan99@gmail.com')),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.pushNamed(context, '/home_screen');

              },
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('My Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile_screen');

              },
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text('Shop'),
              trailing: Icon(Icons.notifications_none_sharp),
              onTap: (){
                Navigator.pushNamed(context, '/cart_screen');
              },
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Events'),
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.upload_file),
              title: Text('Terms && Conditions'),
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),

            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                _confirmLogout();
              },
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
            ),
            Card(
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int itemIndex) {
          setState(() {
            _currentIndex = itemIndex;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.black26,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category),
              label: 'Categories'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }

  void _confirmLogout() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.blue.shade300,
                width: 2,
              )),
          title: Text(
            'Are you sure?',
            style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
          ),
          content: Text('Return to login!'),
          contentTextStyle: GoogleFonts.nunito(
            fontWeight: FontWeight.w300,
            color: Colors.black54,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view_page_screen');
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            )
          ],
        );
      },
    );
  }
}

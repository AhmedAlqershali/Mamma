import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/select_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.black,
          tabs: const [
            Tab(
              text: 'Wemons',
            ),
            Tab(
              text: 'Handbags',
            ),
            Tab(
              text: 'Boots',
            ),
            Tab(
              text: 'Mens',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  PageView(
                    onPageChanged: (int value) {
                      print('Page: #$value');
                      setState(() => _currentPage = value);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset('images/img_bio.png'),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                    ],
                  ),
                  PageView(
                    onPageChanged: (int value) {
                      print('Page: #$value');
                      setState(() => _currentPage = value);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset('images/img_bio.png'),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                    ],
                  ),
                  PageView(
                    onPageChanged: (int value) {
                      print('Page: #$value');
                      setState(() => _currentPage = value);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset('images/img_bio.png'),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                    ],
                  ),
                  PageView(
                    onPageChanged: (int value) {
                      print('Page: #$value');
                      setState(() => _currentPage = value);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset('images/img_bio.png'),
                      )),
                      Container(
                          child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/product_screen'),
                        child: Image.asset(
                          'images/bag.png',
                        ),
                      )),
                    ],
                  ),

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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
                SizedBox(
                  width: 20,
                ),
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
                SizedBox(
                  width: 20,
                ),
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
                SizedBox(
                  width: 20,
                ),
                Cate(
                  img: 'img_wemon.png',
                  text: 'Wemon',
                  num: '10.00\$',
                ),
              ],
            ),
            SizedBox(height: 30),
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
    );
  }
}

class Cate extends StatelessWidget {
  Cate({
    Key? key,
    required this.img,
    required this.text,
    required this.num,
  }) : super(key: key);
  String img;
  String text;
  String num;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Column(
        children: [
          Image.asset(
            'images/$img',
            height: 150,
            fit: BoxFit.cover,
          ),
          Text(
            '$text',
            style: GoogleFonts.nunito(
              color: Color(0xff474559),
              fontSize: 22,
            ),
          ),
          Text(
            '$num',
            style: GoogleFonts.nunito(
              color: Color(0xff9E9DB0),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

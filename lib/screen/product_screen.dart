import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Product Details',
            style: TextStyle(color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            setState(() => Navigator.pushNamed(context, '/cart_screen'));
          },
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bag.png',
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('Handbag:'), Text('\$ 100')],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('from boots category'),
                Text(
                  '\$ 250',
                  style: GoogleFonts.nunito(
                      decoration: TextDecoration.lineThrough),
                )
              ],
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              tabs: const [
                Tab(
                  text: 'Wemons',
                ),
                Tab(
                  text: 'Wemons',
                ),
                Tab(
                  text: 'Wemons',
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industrys standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type...'),
                  Text(
                      ' is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industrys standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type...'),
                  Text(
                      ' simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industrys standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type...'),
                ],
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
        ));
  }
}

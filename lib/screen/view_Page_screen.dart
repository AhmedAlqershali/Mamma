import 'package:flutter/material.dart';
import 'package:mamma/pref/shared_pref_controller.dart';
import 'package:mamma/widgets/page_view.dart';
import 'package:mamma/widgets/select_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewPageScreen extends StatefulWidget {
  const ViewPageScreen({Key? key}) : super(key: key);

  @override
  State<ViewPageScreen> createState() => _ViewPageScreenState();
}

class _ViewPageScreenState extends State<ViewPageScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int value) {
                print('Page: #$value');
                setState(() => _currentPage = value);
              },
              scrollDirection: Axis.horizontal,
              children: [
                ViewPage(
                  img: 'img_veiwpage1.png',
                  name: 'Welcome!',
                  subname:
                      'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                ),
                ViewPage(
                  img: 'img_veiwpage2.png',
                  name: 'Add to cart',
                  subname:
                      'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                ),
                ViewPage(
                  img: 'img_veiwpage3.png',
                  name: 'Enjoy Purchase!',
                  subname:
                      'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                ),
              ],
            ),
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: _currentPage != 0,
                child: IconButton(
                  color: _currentPage == 0 ? Colors.grey : Colors.blue,
                  onPressed: () {
                    _pageController.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInCirc);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              IconButton(
                color: _currentPage == 2 ? Colors.grey : Colors.blue,
                onPressed: () {
                  if (_currentPage != 2) {
                    _pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInCirc);
                  } else if (_currentPage == 2) {
                    Future.delayed(Duration(seconds: 1), () {
                      // String route=SharedPrefController().loggedIn?'/splash_screen':'/login_screen';
                      String route = SharedPrefController().getValueFor<bool>(
                                  key: PrefKeys.loggedIn.name) ??
                              false
                          ? '/bn_screen'
                          : '/login_screen';
                      Navigator.pushReplacementNamed(context, route);
                    });
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          const SizedBox(height: 20),
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
    );
  }
}

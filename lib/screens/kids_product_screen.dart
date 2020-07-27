import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/tabScreens/screen_for_all_tab.dart';

class KidsProductsScreen extends StatefulWidget {
  @override
  _KidsProductsScreenState createState() => _KidsProductsScreenState();
}

class _KidsProductsScreenState extends State<KidsProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5.0,
          bottom: TabBar(
            // isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Girls Clothing',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Boys Clothin',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Tab(
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: Text(
              //       'T-Shirts',
              //       style: TextStyle(
              //           color: Colors.white, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
            ],
          ),
          title: Text(
            'Women\'s Product',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ScreenForAllTab(10),
            ScreenForAllTab(11),
          ],
        ),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/tabScreens/screen_for_all_tab.dart';

class WomensProductScreen extends StatefulWidget {
  @override
  _WomensProductScreenState createState() => _WomensProductScreenState();
}

class _WomensProductScreenState extends State<WomensProductScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5.0,
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Traditional Clothing',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sharee',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Shalwar Kameez',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Unstiched Fabrics',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Kurtis',
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
            ScreenForAllTab(5),
            ScreenForAllTab(6),
            ScreenForAllTab(7),
            ScreenForAllTab(8),
            ScreenForAllTab(9),
          ],
        ),
      ),
    );
    ;
  }
}

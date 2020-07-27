import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/tabScreens/screen_for_all_tab.dart';

class MensProductScreen extends StatefulWidget {
  @override
  _MensProductScreenState createState() => _MensProductScreenState();
}

class _MensProductScreenState extends State<MensProductScreen> {
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
                    'T-Shirts',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Jeans',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Casual Shirts',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Formal Shirts',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Kurtas',
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
            'Mens Product',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ScreenForAllTab(0),
            ScreenForAllTab(1),
            ScreenForAllTab(2),
            ScreenForAllTab(3),
            ScreenForAllTab(4),
          ],
        ),
      ),
    );
  }
}

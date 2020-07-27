import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/kids_product_screen.dart';
import 'package:grelix_shop/screens/mens_product_screen.dart';
import 'package:grelix_shop/screens/womens_product_screen.dart';
import 'package:page_transition/page_transition.dart';

class CategoriesListItem extends StatelessWidget {
  final String imagePath;
  final String category;

  CategoriesListItem({this.imagePath, this.category});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (category == 'Men\'s Fashion') {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: MensProductScreen()));
                }
                if (category == 'Women\'s Fashion') {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: WomensProductScreen(),
                          type: PageTransitionType.leftToRight));
                }
                if (category == 'Kids') {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: KidsProductsScreen(),
                          type: PageTransitionType.leftToRight));
                }
              },
              child: Container(
                  height: 210,
                  width: 220,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

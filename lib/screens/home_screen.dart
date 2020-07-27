import 'package:flutter/material.dart';
import 'package:grelix_shop/dummyData/dummy_data_for_category_listview.dart';
import 'package:grelix_shop/widgets/listviewItem/list_item_for_categories.dart';
import 'package:grelix_shop/widgets/listviewItem/list_item_for_discount_products.dart';
import 'package:page_transition/page_transition.dart';

import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "Grellix Shop",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: themeContext.primaryColor),
            ),
          )
        ],
      )),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: CartScreen(),
                      type: PageTransitionType.leftToRight));
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        centerTitle: true,
        backgroundColor: themeContext.primaryColor,
        title: const Text(
          'Grelix Shop Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Search your product',
                      labelStyle: TextStyle(color: themeContext.primaryColor),
                      prefixIcon: Icon(
                        Icons.search,
                        color: themeContext.primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(18.0)),
                height: deviceSize.height * 0.34,
                alignment: Alignment.center,
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/arrong_ad.jpg',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    'See All',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 250,
              child: ListView.builder(
                itemCount: CATEGORY_LIST_DUMMY_DATA.length,
                itemBuilder: (ctx, index) => CategoriesListItem(
                  imagePath: CATEGORY_LIST_DUMMY_DATA[index].imagePath,
                  category: CATEGORY_LIST_DUMMY_DATA[index].category,
                ),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Discount Products',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 300,
              child: ListView.builder(
                itemCount: DISCOUNT_PRODUCT_DUMMY_DATA.length,
                itemBuilder: (ctx, index) => DiscountProductListItem(
                  imagePath: DISCOUNT_PRODUCT_DUMMY_DATA[index].imagePath,
                  productTitle: DISCOUNT_PRODUCT_DUMMY_DATA[index].productTitle,
                  previousPrice:
                      DISCOUNT_PRODUCT_DUMMY_DATA[index].previousPrice,
                  currentPrice: DISCOUNT_PRODUCT_DUMMY_DATA[index].currentPrice,
                  discountAmount: DISCOUNT_PRODUCT_DUMMY_DATA[index].discount,
                ),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/product_details_screen.dart';
import 'package:page_transition/page_transition.dart';

class CategoryProductGridItem extends StatelessWidget {
  final String imagePath;
  final String productTitle;
  final double productPrice;

  CategoryProductGridItem({
    this.imagePath,
    this.productTitle,
    this.productPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: ProductDetailsScreen(
                          imagePath: imagePath,
                          productTitle: productTitle,
                          productdPrice: productPrice,
                        ),
                        type: PageTransitionType.leftToRight));
              },
              child: Hero(
                tag: imagePath,
                child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.contain,
                    )
                    //  Container(
                    //     height: 210,
                    //     width: 220,
                    //     decoration: BoxDecoration(shape: BoxShape.rectangle),
                    //     child: Image.asset(
                    //       imagePath,
                    //       fit: BoxFit.fill,
                    //     )),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productTitle,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\৳ $productPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Text('\৳ $previousPrice',
                  //         style: TextStyle(
                  //             decoration: TextDecoration.lineThrough,
                  //             color: Colors.black,
                  //             fontWeight: FontWeight.w300)),
                  //     Padding(
                  //       padding: EdgeInsets.only(left: 8),
                  //       child: Text(
                  //         '$discountAmount \%',
                  //         style: TextStyle(
                  //           color: Colors.red,
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

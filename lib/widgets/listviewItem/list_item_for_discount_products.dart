import 'package:flutter/material.dart';

class DiscountProductListItem extends StatelessWidget {
  final String imagePath;
  final String productTitle;
  final double previousPrice;
  final double currentPrice;
  final double discountAmount;

  DiscountProductListItem(
      {this.imagePath,
      this.productTitle,
      this.previousPrice,
      this.currentPrice,
      this.discountAmount});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 210,
                width: 220,
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                )),
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
                    '\৳ $currentPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text('\৳ $previousPrice',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black,
                              fontWeight: FontWeight.w300)),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          '$discountAmount \%',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

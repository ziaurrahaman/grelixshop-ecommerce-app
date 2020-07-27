import 'package:flutter/material.dart';
import 'package:grelix_shop/screens/cart_screen.dart';
import 'package:page_transition/page_transition.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String imagePath;
  final String productTitle;
  final double productdPrice;

  ProductDetailsScreen({this.imagePath, this.productTitle, this.productdPrice});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int counter = 1;

  void incrementOrDecrementCounter(String action) {
    if (action == 'add') {
      setState(() {
        counter += 1;
      });
    }
    if (action == 'substract') {
      setState(() {
        counter -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: CartScreen(),
                      type: PageTransitionType.leftToRight));
            },
          )
        ],
        centerTitle: true,
        title: Text(
          'Produt Details Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: deviceSize.height * 0.5,
            width: deviceSize.width,
            child: Hero(
              tag: widget.imagePath,
              child: Image.network(widget.imagePath),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              widget.productTitle,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'Available Color',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              'Available Size',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      '28',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '30',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '32',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '34',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. '),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              'Select Quantity',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                    padding: EdgeInsets.all(0),
                    child: IconButton(
                      onPressed: () {
                        incrementOrDecrementCounter('add');
                      },
                      icon: Icon(
                        Icons.add,
                        size: 37,
                        color: Colors.grey[800],
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[300],
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey[600], offset: Offset(4.0, 4.0)),
                      //   BoxShadow(
                      //       color: Colors.white,
                      //       offset: Offset(-4.0, -4.0),
                      //       blurRadius: 15.0,
                      //       spreadRadius: 1.0),
                      // ],
                      // gradient: LinearGradient(
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight,
                      //     colors: [
                      //       Colors.grey[200],
                      //       Colors.grey[300],
                      //       Colors.grey[400],
                      //       Colors.grey[500],
                      //     ],
                      //     stops: [
                      //       0.1,
                      //       0.3,
                      //       0.8,
                      //       1
                      //     ]),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  counter.toString(),
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                    padding: EdgeInsets.all(0),
                    child: IconButton(
                      onPressed: () {
                        incrementOrDecrementCounter('substract');
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 37,
                        color: Colors.grey[800],
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[300],
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey[600], offset: Offset(4.0, 4.0)),
                      //   BoxShadow(
                      //       color: Colors.white,
                      //       offset: Offset(-4.0, -4.0),
                      //       blurRadius: 15.0,
                      //       spreadRadius: 1.0),
                      // ],
                      // gradient: LinearGradient(
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight,
                      //     colors: [
                      //       Colors.grey[200],
                      //       Colors.grey[300],
                      //       Colors.grey[400],
                      //       Colors.grey[500],
                      //     ],
                      //     stops: [
                      //       0.1,
                      //       0.3,
                      //       0.8,
                      //       1
                      //     ]),
                    )),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 37,
                      color: Colors.red[800],
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2)),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Theme.of(context).primaryColor,
                      size: 37,
                    ),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: deviceSize.width * 0.75,
                  // decoration: BoxDecoration(
                  //     shape: BoxShape.rectangle,
                  //     borderRadius: BorderRadius.circular(18)),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

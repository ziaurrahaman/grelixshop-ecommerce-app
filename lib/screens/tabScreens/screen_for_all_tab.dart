import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grelix_shop/dummyData/dummy_data_for_category_listview.dart';
import 'package:grelix_shop/widgets/gridviewItems/grid_item_for_mens_tab_screen.dart';

class ScreenForAllTab extends StatelessWidget {
  final int tabId;

  ScreenForAllTab(this.tabId);

  // ignore: missing_return
  Widget provideDataToTheGrid(int index) {
    if (tabId == 0) {
      return CategoryProductGridItem(
        imagePath: MENS_TSHIRT_DUMMY_DATA[index].imagePath,
        productTitle: MENS_TSHIRT_DUMMY_DATA[index].productTitle,
        productPrice: MENS_TSHIRT_DUMMY_DATA[index].currentPrice,
      );
    }
    if (tabId == 1) {
      return CategoryProductGridItem(
        imagePath: MENS_JEANS[index].imagePath,
        productTitle: MENS_JEANS[index].productTitle,
        productPrice: MENS_JEANS[index].currentPrice,
      );
    }
    if (tabId == 2) {
      return CategoryProductGridItem(
        imagePath: CASUAL_TSHIRT_FOR_MEN[index].imagePath,
        productTitle: CASUAL_TSHIRT_FOR_MEN[index].productTitle,
        productPrice: CASUAL_TSHIRT_FOR_MEN[index].currentPrice,
      );
    }
    if (tabId == 3) {
      return CategoryProductGridItem(
        imagePath: FORMAL_SHIRT_FOR_MEN[index].imagePath,
        productTitle: FORMAL_SHIRT_FOR_MEN[index].productTitle,
        productPrice: FORMAL_SHIRT_FOR_MEN[index].currentPrice,
      );
    }
    if (tabId == 4) {
      return CategoryProductGridItem(
        imagePath: MENS_KURTAS[index].imagePath,
        productTitle: MENS_KURTAS[index].productTitle,
        productPrice: MENS_KURTAS[index].currentPrice,
      );
    }
    if (tabId == 5) {
      return CategoryProductGridItem(
        imagePath: TRADITIONAL_CLOTHING[index].imagePath,
        productTitle: TRADITIONAL_CLOTHING[index].productTitle,
        productPrice: TRADITIONAL_CLOTHING[index].currentPrice,
      );
    }
    if (tabId == 6) {
      return CategoryProductGridItem(
        imagePath: SHARI_COLLECTION[index].imagePath,
        productTitle: SHARI_COLLECTION[index].productTitle,
        productPrice: SHARI_COLLECTION[index].currentPrice,
      );
    }
    if (tabId == 7) {
      return CategoryProductGridItem(
        imagePath: SHALWAR_KAMEEZ_COLLECTION[index].imagePath,
        productTitle: SHALWAR_KAMEEZ_COLLECTION[index].productTitle,
        productPrice: SHALWAR_KAMEEZ_COLLECTION[index].currentPrice,
      );
    }
    if (tabId == 8) {
      return CategoryProductGridItem(
        imagePath: UNSTICHED_FABRICS[index].imagePath,
        productTitle: UNSTICHED_FABRICS[index].productTitle,
        productPrice: UNSTICHED_FABRICS[index].currentPrice,
      );
    }
    if (tabId == 9) {
      return CategoryProductGridItem(
        imagePath: CURTIS_COLLECTION[index].imagePath,
        productTitle: CURTIS_COLLECTION[index].productTitle,
        productPrice: CURTIS_COLLECTION[index].currentPrice,
      );
    }
    if (tabId == 10) {
      return CategoryProductGridItem(
        imagePath: GIRLS_CLOTHING[index].imagePath,
        productTitle: GIRLS_CLOTHING[index].productTitle,
        productPrice: GIRLS_CLOTHING[index].currentPrice,
      );
    }
    if (tabId == 11) {
      return CategoryProductGridItem(
        imagePath: BOYS_CLOTHING[index].imagePath,
        productTitle: BOYS_CLOTHING[index].productTitle,
        productPrice: BOYS_CLOTHING[index].currentPrice,
      );
    }
  }

  // ignore: missing_return
  int provideItemCount() {
    if (tabId == 0) {
      return MENS_TSHIRT_DUMMY_DATA.length;
    }
    if (tabId == 1) {
      return MENS_JEANS.length;
    }
    if (tabId == 2) {
      return CASUAL_TSHIRT_FOR_MEN.length;
    }
    if (tabId == 3) {
      return FORMAL_SHIRT_FOR_MEN.length;
    }
    if (tabId == 4) {
      return MENS_KURTAS.length;
    }
    if (tabId == 5) {
      return TRADITIONAL_CLOTHING.length;
    }
    if (tabId == 6) {
      return SHARI_COLLECTION.length;
    }
    if (tabId == 7) {
      return SHALWAR_KAMEEZ_COLLECTION.length;
    }
    if (tabId == 8) {
      return UNSTICHED_FABRICS.length;
    }
    if (tabId == 9) {
      return CURTIS_COLLECTION.length;
    }
    if (tabId == 10) {
      return GIRLS_CLOTHING.length;
    }
    if (tabId == 11) {
      return BOYS_CLOTHING.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: StaggeredGridView.countBuilder(
          itemCount: provideItemCount(),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          itemBuilder: (contex, index) => provideDataToTheGrid(index),
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(
                1,
                index.isEven
                    ? (tabId == 5 ? 2.3 : (tabId == 7 ? 2.5 : 1.9))
                    : (tabId == 5 ? 2.1 : (tabId == 7 ? 2.2 : 1.7)));
          }),
    );
  }
}

import 'package:find_your_makeup/model/product.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:find_your_makeup/util/routes.dart';
import 'package:flutter/material.dart';

class ProductsGridWidget extends StatelessWidget {
  final List<Product> products;

  const ProductsGridWidget({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10),

        itemCount: products.length,

        itemBuilder: (context, index) {

          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.product_detail_route, arguments: products[index]);
              },
              child: builderProductCard(index)
          );
        },
      ),
    );
  }

  ///
  /// Create card to product
  /// */
  Container builderProductCard(int index) {
    return Container(

              child: Column(

                children: [
                  SizedBox(height: 5,),

                  Container(
                    width: 120,
                    height: 120,
                    child:  Image.network( products[index].imageLink ,
                      errorBuilder: (context, exception, stackTrace) {
                        return Icon(
                          Icons.error,
                          color: PalleteColors.clearPink,
                          size: 24.0,
                        );
                      },),
                  ),

                  SizedBox(height: 10,),

                  Text(
                    products[index].name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              decoration: BoxDecoration(
                color: PalleteColors.clearPink,
                border: Border.all(color: PalleteColors.darkPink, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            );
  }


}

import 'package:find_your_makeup/model/product.dart';
import 'package:find_your_makeup/util/colors.dart';
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                print('quero detalhes do produto');
                print(products[index].imageLink);
                //Navigator.pushNamed(context, '/makeupList', arguments: brand.name);
              },
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Container(
                      width: 150,
                      height: 150,
                      child:  Image.network( products[index].imageLink ,
                        errorBuilder: (context, exception, stackTrace) {
                          return Text('erro na image');
                        },),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      products[index].name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: PalleteColors.clearPink,
                  border: Border.all(color: PalleteColors.darkPink, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ));
        },
      ),
    );
  }


}

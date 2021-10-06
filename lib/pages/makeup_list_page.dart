import 'package:find_your_makeup/model/product.dart';
import 'package:find_your_makeup/services/makeup_service.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:find_your_makeup/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class MakeupListPage extends StatefulWidget {

  const MakeupListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MakeupListPageState createState() => _MakeupListPageState();
}

class _MakeupListPageState extends State<MakeupListPage> with SingleTickerProviderStateMixin {

  var makeupService = MakeupService();

  late Future<List<Product>> productsOfBrand;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var brand = ModalRoute.of(context)!.settings.arguments as String;
    productsOfBrand = makeupService.listProductsOfBrand(brand);


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          FutureBuilder<List<Product>>(
            future: productsOfBrand,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator(color: PalleteColors.darkPink, backgroundColor: PalleteColors.clearPink,);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}', style: TextStyle(fontWeight: FontWeight.bold),);
              } else {
                return Expanded(
                  child: ProductsGridWidget(products: snapshot.data!),
                );
              }
            },
          ),
        ],
      )

    );
  }
}

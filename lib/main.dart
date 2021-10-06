import 'package:find_your_makeup/pages/brands_page.dart';
import 'package:find_your_makeup/pages/makeup_list_page.dart';
import 'package:find_your_makeup/pages/product_detail_page.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:find_your_makeup/util/routes.dart';
import 'package:find_your_makeup/util/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: Strings.app_tittle,

        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: PalleteColors.basePink,
            accentColor: PalleteColors.clearPink),

        home: BrandsPage(title: Strings.brands_tittle),

        routes: {
          Routes.makeup_list_route: (context) => MakeupListPage(title: Strings.makeups_list_tittle),
          Routes.product_detail_route: (context) => ProductDetailPage(title: Strings.product_detail_tittle)
        });
  }
}

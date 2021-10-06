import 'package:find_your_makeup/pages/home_page.dart';
import 'package:find_your_makeup/pages/makeup_list.dart';
import 'package:find_your_makeup/pages/product_detail.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Find Your Makeup',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: PalleteColors.basePink,
            accentColor: PalleteColors.clearPink),
        home: HomePage(title: 'Brands'),
        routes: {
          '/makeupList': (context) => MakeupList(title: 'Makeups of Brand'),
          '/productDetail': (context) => PraductDetail()
        });
  }
}

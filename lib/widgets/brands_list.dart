import 'package:find_your_makeup/model/brand.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:find_your_makeup/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:find_your_makeup/services/makeup_service.dart';

class BrandsList extends StatefulWidget {
  const BrandsList({Key? key}) : super(key: key);

  @override
  _BrandsListState createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {
  static final brands = [
    Brand(name: "almay", logo: "assets/images/almay_logo.png"),
    Brand(name: "annabelle", logo: "assets/images/annabelle_logo.png"),
    Brand(name: "colourpop", logo: "assets/images/colourpop_logo.jpeg"),
    Brand(name: "covergirl", logo: "assets/images/covergirl_logo.png"),
    Brand(name: "boosh", logo: "assets/images/boosh_logo.png"),
    Brand(name: "maybelline", logo: "assets/images/maybelline_logo.png"),
    Brand(name: "milani", logo: "assets/images/milani_logo.png"),
    Brand(name: "nyx", logo: "assets/images/nyx_logo.jpeg"),
    Brand(name: "revlon", logo: "assets/images/revlon_logo.png"),
    Brand(name: "zorah biocosmetiques", logo: "assets/images/zorah_logo.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        child: Column(
          children: [
            buildHeader(),
            Expanded(
              child: convertToBrandWidget(),
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// Builder header with ilustration
  /// */
  Row buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Select your favorite makeup brand!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Image.asset("assets/images/home_ilustration.png"),
          flex: 2,
        )
      ],
    );
  }

  ///
  /// Generate grid view with brands
  /// */
  GridView convertToBrandWidget() {
    return GridView.count(
      crossAxisSpacing: 15,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: brands
          .map(
            (brand) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.makeup_list_route,
                      arguments: brand.name);
                },
                child: buildBrandCard(brand)),
          )
          .toList(),
    );
  }

  ///
  /// Card to put brand logo
  /// */
  Container buildBrandCard(Brand brand) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(brand.logo),
      ),
      decoration: BoxDecoration(
        color: PalleteColors.clearPink,
        border: Border.all(color: PalleteColors.darkPink, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

import 'package:find_your_makeup/model/brand.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:find_your_makeup/services/makeup_service.dart';

class BrandsList extends StatefulWidget {
  const BrandsList({Key? key}) : super(key: key);

  @override
  _BrandsListState createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {
  static final brands = [
    Brand(name: "benefit", logo: "assets/images/benefit_logo.jpg"),
    Brand(name: "clinique", logo: "assets/images/clinique_logo.png"),
    Brand(name: "colourpop", logo: "assets/images/colourpop_logo.jpeg"),
    Brand(name: "covergirl", logo: "assets/images/covergirl_logo.png"),
    Brand(name: "l'oreal", logo: "assets/images/loreal_logo.jpeg"),
    Brand(name: "maybelline", logo: "assets/images/maybelline_logo.png"),
    Brand(name: "milani", logo: "assets/images/milani_logo.png"),
    Brand(name: "nyx", logo: "assets/images/nyx_logo.jpeg"),
    Brand(name: "revlon", logo: "assets/images/revlon_logo.png"),
    Brand(name: "zorah biocosmetiques", logo: "assets/images/zorah_logo.png"),
  ];

  var makeupService = MakeupService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text("Select your favorite makeup brand"),
                  flex: 1,
                ),
                Expanded(
                  child: Image.asset("assets/images/home_ilustration.png"),
                  flex: 2,
                )
              ],
            ),
            Expanded(
              child: convertToBrandWidget(),
            ),
          ],
        ),
      ),
    );
  }

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
                  Navigator.pushNamed(context, '/makeupList', arguments: brand.name);
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(brand.logo),
                  ),
                  decoration: BoxDecoration(
                    color: PalleteColors.clearPink,
                    border: Border.all(color: PalleteColors.darkPink, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          )
          .toList(),
    );
  }
}

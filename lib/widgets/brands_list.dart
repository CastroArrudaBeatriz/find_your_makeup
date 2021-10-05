import 'package:flutter/material.dart';
import 'package:find_your_makeup/services/MakeupService.dart';


class BrandsList extends StatefulWidget {
  const BrandsList({Key? key}) : super(key: key);

  @override
  _BrandsListState createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {

  var makeupService = MakeupService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white70,
              hintText: "Pesquise a marca",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            scrollDirection: Axis.vertical,
            children: [
              GestureDetector(
                  onTap: () {
                    makeupService.listProductsOfBrand('colourpop');
                    Navigator.pushNamed(context, '/productDetail');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.pinkAccent),
                  )),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.pinkAccent),
              )
            ],
          )),
        ],
      ),
    );
  }
}

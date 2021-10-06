import 'package:find_your_makeup/util/colors.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget{
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('favorites not implemented yet, i`m sorry 😣',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: PalleteColors.darkPink ,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),

        Image.asset("assets/images/sad_ilustration.png")
      ],
    );
  }
}

import 'package:find_your_makeup/model/product.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailPage extends StatefulWidget{

  final String title;

  const ProductDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  
  @override
  Widget build(BuildContext context) {
   
    var product = ModalRoute.of(context)!.settings.arguments as Product;
    
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Column(

        children: [

          SizedBox(height: 80,),

          Container(
              child: Image.network( product.imageLink ,
                width: 300,
                height: 300,
                errorBuilder: (context, exception, stackTrace) {
                  return Icon(
                    Icons.error,
                    color: PalleteColors.clearPink,
                    size: 24.0,
                  );
                },),
              alignment: Alignment.center,
          ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Text(product.name,
              textAlign: TextAlign.center,
              style: textDetailStyle(),),
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Brand: ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),),
              Text(product.brand,
                textAlign: TextAlign.justify,
                style: textDetailStyle(),),
            ],
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Price: ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),),
              Text('\$'+ product.price,
                textAlign: TextAlign.justify,
                style: textDetailStyle(),),
            ],
          ),

          SizedBox(height: 20,),

          InkWell(
              child: new Text('Click to buy 😍' ,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: PalleteColors.darkPink),
              ),
              onTap: () => launch(product.productLink)
          ),

        ],
      )
    );
  }

  TextStyle textDetailStyle() =>  TextStyle(fontWeight: FontWeight.bold, color: PalleteColors.basePink);
}

import 'package:find_your_makeup/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutPage extends StatefulWidget{
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Text('Aplicativo de estudo implementado para fixar conhecimentos',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: PalleteColors.darkPink ,
              fontWeight: FontWeight.w700,
              fontSize: 25
          ),
        ),

        Row(
          children: [
            SizedBox(width: 20,),
            Text('Api: ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold),),

            InkWell(
                child: new Text('https://makeup-api.herokuapp.com/' ,
                  style: TextStyle(fontWeight: FontWeight.bold, color: PalleteColors.darkPink),
                ),
                onTap: () => launch('https://makeup-api.herokuapp.com/')
            ),

          ],
        ),

        Row(
          children: [
            SizedBox(width: 20,),
            Text('Curso: ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold),),

            Text('DevApps.2020.1',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, color: PalleteColors.darkPink),),
          ],
        ),

        Image.asset("assets/images/thank_u_ilustration.png")
      ],
    );
  }
}

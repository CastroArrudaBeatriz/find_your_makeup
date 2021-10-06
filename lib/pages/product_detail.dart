import 'package:flutter/material.dart';

class PraductDetail extends StatefulWidget{
  const PraductDetail({Key? key}) : super(key: key);

  @override
  _PraductDetailState createState() => _PraductDetailState();
}

class _PraductDetailState extends State<PraductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('depois eu boto'),
      ),
      body: Container(child: Text("detalhes do prpduto"),),
    );
  }
}

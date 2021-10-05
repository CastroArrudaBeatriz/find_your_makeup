import 'package:flutter/material.dart';

class MakeupList extends StatefulWidget {

  const MakeupList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MakeupListState createState() => _MakeupListState();
}

class _MakeupListState extends State<MakeupList> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text('aqui vai a lista de makes')
        ],
      )

    );
  }
}

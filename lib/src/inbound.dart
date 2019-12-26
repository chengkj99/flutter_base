import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Inbound extends StatefulWidget {
  @override
  InboundState createState() => InboundState();
}

class InboundState extends State<Inbound> {

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Center(child: Text('入库'))),
      body: Center(
        child: FlatButton(
          child: Text('入库信息'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
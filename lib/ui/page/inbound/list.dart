import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Inbound extends StatefulWidget {
  @override
  InboundState createState() => InboundState();
}

class InboundState extends State<Inbound> {
  TextEditingController _controller;
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  final orderId = '38729847982';
  final time = "dhishsilsil";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('入库单列表')),
      body: Column(children: <Widget>[
        new TextFormField(
          controller: _controller,
          autofocus: true,
          decoration: new InputDecoration(
//            border: OutlineInputBorder(),
            hintText: '请输入订单编号',
          ),
          validator: (String value) {
            return value.contains('@') ? 'Do not use the @ char.' : null;
          },
          onFieldSubmitted: (String value) {
//            submit value to backend
            print('submitted>>> $value');
          },
        ),
        Expanded(
            child: ListView(
//          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                Container(height: 30, child: Text('入库单号: $orderId')),
                Container(height: 30, child: Text('创建时间: 2020-01-20')),
                Container(
                  height: 30,
                  child: Text('入库状态: 未入库'),
                )
              ],
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child: Text('Entry C')),
            ),
          ],
        ))
      ]),
    );
  }
}

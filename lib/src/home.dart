
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final features = {
    'inbound': 'INBOUND',
    'inventory': 'INVENTORY',
    'stockOut': 'STOCK_OUT',
    'changeWarehouse': 'STOCK_MOVE',
    'tizong': 'GATHER_PICK',
    'tally': 'TALLY',
    'palletInbound': 'WHOLE_STOCK_IN',
    'palletOutbound': 'WHOLE_STOCK_OUT',
    'boxOutbound': 'WHOLE_BOX_OUT',
  };

  final featureImgMap = {
    'inbound': 'ruku',
    'inventory': 'pandian',
    'stockOut': 'chuku',
    'changeWarehouse': 'yiku',
    'tizong': 'tizong',
    'tally': 'lihuo',
    'palletInbound': 'zhengtuoruku',
    'palletOutbound': 'zhengtuochuku',
    'boxOutbound': 'zhengxiangchuku',
  };
  final featureNameMap = {
    'inbound': '入库',
    'inventory': '盘点',
    'stockOut': '出库',
    'changeWarehouse': '移库',
    'tizong': '提总',
    'tally': '理货',
    'palletInbound': '整托入库',
    'palletOutbound': '整托出库',
    'boxOutbound': '整箱出库',
  };

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('HETU河图')),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: _buildFeatures(),
        ));
  }

  List<Widget> _buildFeatures() {
    return features.keys.map((k) {
      return _buildSingleFeature(k);
    }).toList();
  }

  Widget _buildSingleFeature(String k) {
    return Card(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SvgPicture.asset(
                  'assets/img/' + featureImgMap[k] + '.svg',
                  width: 60,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
                Text(featureNameMap[k]),
              ],
            )));
  }
}

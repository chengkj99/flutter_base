import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_base/model/home.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var titleName = "HETU河图";
  var i = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(titleName)),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: _buildFeatures(),
        ));
  }

  List<Widget> _buildFeatures() {
    return HomeModel.features.keys.map((k) {
      return _buildSingleFeature(k);
    }).toList();
  }

  void _handleTap(String k) {
    this.setState(() {
      titleName = "HETU河图" + (i++).toString();
    });
    var targetRoute = HomeModel.featureRoutes[k];
    print('$targetRoute');
    if (targetRoute == null) {
      return;
    }
    Navigator.pushNamed(context, targetRoute);
  }

  Widget _buildSingleFeature(String k) {
    return GestureDetector(
        onTap: () => _handleTap(k),
        child: Card(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new SvgPicture.asset(
              'assets/img/' + HomeModel.featureImgMap[k] + '.svg',
              width: 60,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
            Text(HomeModel.featureNameMap[k]),
          ],
        ))));
  }
}

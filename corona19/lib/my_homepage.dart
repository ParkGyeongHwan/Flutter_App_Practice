import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/corona.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final corona19 = <Corona>[];

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future fetch() async {
    var url =
        'https://api.corona-19.kr/korea/beta/?serviceKey=eom3n1Y28GOXIVzTH5kUPBQKWNtRiJpjl';
    var response = await http.get(Uri.parse(url));

    final Map<String, dynamic> jsonResult =
        jsonDecode(utf8.decode(response.bodyBytes));
    // final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));

    jsonResult.forEach((key, value) {
      if (key != 'API') {
        corona19.add(Corona.fromJson(value));
      }
    });
    return;
    final jsonCorona = jsonResult['korea'];
    Corona corona = Corona.fromJson(jsonCorona);
    corona19.add(corona);

    // corona19.clear();
    // jsonCorona.forEach((e) {
    // });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Covid19Status'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '코로나19 상황판',
              style: TextStyle(height: 3, fontSize: 25),
            ),
          ),
          Row(
            children: [
              Text('코로나 바이러스 감염증-19 국내 발생현황(03.02 00시 기준)'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  child: corona19.isEmpty
                      ? Container()
                      : Text('전체 확진자 수:${corona19[0].totalCnt}'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:corona19/vaccination.dart';
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
  int _selectedIndex = 0;

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
      setState(() {});
    });
    return;
    // corona19.clear();
    // jsonCorona.forEach((e) {
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.purple,
                title: Text('Covid19Status'),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      fetch();
                    },
                  )
                ],
              ),
              body: Column(
                children: [
                  Center(
                    child: Text(
                      '코로나19 상황판',
                      style: TextStyle(height: 2, fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '코로나 바이러스 감염증-19 국내 발생현황',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '전체 확진자 수:${corona19[0].totalCnt}',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                          'https://ichef.bbci.co.uk/news/1024/branded_korean/90FF/production/_116191173_gettyimages-1212213051.jpg',
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(20.0),
                      children: <Widget>[
                        Center(
                          child: Text(
                            '서울 : ${corona19[2].totalCnt}',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '부산 : ${corona19[3].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '대구: ${corona19[4].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '인천 : ${corona19[5].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '광주 : ${corona19[6].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '대전 : ${corona19[7].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '울산 : ${corona19[8].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '경기 : ${corona19[9].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Text(
                            '제주 : ${corona19[3].totalCnt}',
                            style: TextStyle(height: 2, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          : vaccination(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '코로나 전국현황',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '국내 예방접종현황',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          _selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}

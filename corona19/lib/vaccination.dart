import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/vaccin.dart';

class vaccination extends StatefulWidget {
  const vaccination({Key? key}) : super(key: key);

  @override
  _vaccinationState createState() => _vaccinationState();
}

class _vaccinationState extends State<vaccination> {
  final vaccination = <Vaccine>[];

  void initState() {
    super.initState();
    fetch();
  }

  @override
  Future fetch() async {
    var url =
        'https://api.corona-19.kr/korea/vaccine/?serviceKey=eom3n1Y28GOXIVzTH5kUPBQKWNtRiJpjl';
    var response = await http.get(Uri.parse(url));

    final Map<String, dynamic> jsonResult =
        jsonDecode(utf8.decode(response.bodyBytes));

    jsonResult.forEach((key, value) {
      if (key != 'API') {
        vaccination.add(Vaccine.fromJson(value));
      }
      setState(() {});
    });
    //print('build');
    return;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('전국백신접종현황'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  fetch();
                })
          ],
        ),
        body: Text(
          '전국 백신접종자 : ${vaccination[0].vaccine_1.vaccine_1}',
        ));
  }
}
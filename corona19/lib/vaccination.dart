import 'package:flutter/material.dart';

class vaccination extends StatefulWidget {
  const vaccination({Key? key}) : super(key: key);

  @override
  _vaccinationState createState() => _vaccinationState();
}

class _vaccinationState extends State<vaccination> {
  @override
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: Container(),
    );
    ;
  }
}

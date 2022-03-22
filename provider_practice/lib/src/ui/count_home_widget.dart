import 'package:flutter/material.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'count',
          style: TextStyle(fontSize: 80),
          ),
        );
  }
}
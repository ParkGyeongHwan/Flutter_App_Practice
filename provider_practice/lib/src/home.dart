import 'package:flutter/material.dart';
import 'package:provider_practice/src/ui/count_home_widget.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provider sample'),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {},
          ),
      ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/bubble.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("test");
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.plus_one),
        ),
        appBar: AppBar(
          title: Text("Counter Example"),
        ),
        body: Center(
            child: Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            Bubble(text: '$counter'),
          ],
        )));
  }
}

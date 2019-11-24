import 'package:flutter/material.dart';
import 'package:flutter_app/src/screen/mobxcounter.dart';
import './screen/home.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: MobxCounter());
  }
}

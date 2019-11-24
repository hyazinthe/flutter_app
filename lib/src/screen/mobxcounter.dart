import 'package:flutter/material.dart';
import '../widgets/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../store/counter.dart';

final counter = Counter();

class MobxCounter extends StatefulWidget {
  createState() {
    return MobxCounterState();
  }
}

class MobxCounterState extends State<MobxCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MobX Counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Bubble(text: '${counter.value}'),
            ),
            Text(
              '.. and this is layouted by wrap widget',
            ),
          ],
        ),
      ),
    );
  }
}

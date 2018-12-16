import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Page"),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_drwawer/pages/Data.dart';


class First extends StatefulWidget {
  @override
  _FirstState createState() => new _FirstState();
}

class _FirstState extends State<First> {

  final List<String>listOf=["Food","Item","Macbook","Product","Item","Job","Developer"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First Page"),
        backgroundColor: Colors.indigoAccent,
      ),//appbar

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listOf[index]),
        itemCount: this.listOf.length,
      ),

    );
  }
}

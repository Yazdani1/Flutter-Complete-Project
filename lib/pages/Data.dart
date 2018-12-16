import 'package:flutter/material.dart';

class Data extends StatelessWidget {

  final String name;

  Data(this.name);

  @override
  Widget build(BuildContext context) {
    return new Card(

      elevation: 7.0,
      margin: EdgeInsets.all(8.0),
      child: new Container(
        margin: EdgeInsets.all(15.0),
        child: new Row(
          children: <Widget>[

            new CircleAvatar(
              child: new Text(name[0]),
              backgroundColor: Colors.green,
            ),

            new Padding(padding: EdgeInsets.all(8.0)),

            new Text(name,style: new TextStyle(fontSize: 19.0),)


          ],
        ),
      ),
    );
  }
}


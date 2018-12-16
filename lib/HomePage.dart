import 'package:flutter/material.dart';
import 'pages/FirstPage.dart';
import 'pages/SecondPage.dart';
import 'pages/Data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  final List<String>listof=["Apple","Food","Product","ios","iPhone","Flutter","Google","Web","Online"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        backgroundColor: Colors.green,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Deny"),
                accountEmail: new Text("jon@gmail.com"),

              decoration: new BoxDecoration(
                color: Colors.green
              ),

            ),

            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.title),

              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>First()));
              },
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.print),

              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>Second()));
              },

            ),
            new Divider(
              color: Colors.grey,
            ),
            
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            )




          ],
        ),
      ),//drawer

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listof[index]),
        itemCount: this.listof.length,
      ),


    );
  }
}

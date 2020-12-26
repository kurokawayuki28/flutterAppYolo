import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Container(
          child: new Column(children: <Widget>[
            new Text("0"),
            
            new Expanded(
              child: new Divider(),
            ),

            new Row(
              children: [
                new Expanded (
                      child: new MaterialButton(
                      child: new Text("1"),
                      onPressed: () => {},
                      color: Colors.blueGrey,
                      textColor: Colors.white,
                    ),
                ),
              ],
            )
          ])
        )
    );
  }
}

















































































































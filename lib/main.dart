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

  Widget buildButton(String buttonText){
      return  new Expanded (
          child: new OutlineButton(
            padding: new EdgeInsets.all(24.0),
            child: new Text(buttonText),
            onPressed: () => {},
            ),
        );
  }



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

            new Column(
              children: [
                
                new Row(
                  children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("/")
                  ]),
                  new Row(
                  children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("X")
                  ]),
                  new Row(
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("-")
                  ]),
                  new Row(
                  children: [
                    buildButton("."),
                    buildButton("x10"),
                    buildButton("x100"),
                    buildButton("+")
                  ]),
                  new Row(
                  children: [
                    buildButton("Clear"),
                    buildButton("=")
                   
                  ]),
              ],)
          ])
        )
    );
  }
}

















































































































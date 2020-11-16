import 'package:flutter/material.dart';
//import 'package:settings_button/Constants.dart';

class Constants {
  static const String Fund = 'Fund';
  static const String Settings = 'Settings';
  static const String SignOut = 'Sign out';
  static const String Subscribe = 'Subscribe';
  static const List<String> choices = <String>[Fund, SignOut, Subscribe, Settings];
}
//void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePages(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePages extends StatefulWidget {
  MyHomePages({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePagesState createState() => new _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Body',
            ),
          ],
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Subscribe) {
      print('Subscribe');
    } else if (choice == Constants.SignOut) {
      print('SignOut');
    }
  }
}

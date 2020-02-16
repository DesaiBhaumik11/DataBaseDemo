import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/screenDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: StudentPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin{
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stackoverflow playground'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              CupertinoFullscreenDialogTransition(
                animation: _animationController,
                child: Center(
                  child: Container(
                    color: Colors.blueGrey,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => _animationController.forward(),
                    child: Text('Forward'),
                  ),
                  RaisedButton(
                    onPressed: () => _animationController.reverse(),
                    child: Text('Reverse'),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
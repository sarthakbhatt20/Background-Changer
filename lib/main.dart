import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random BG'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.white
  ];

  var currentColor = Colors.black;

  setRandom() {
    var rd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: currentColor,
        child: Center(
          child: ElevatedButton(
            onPressed: setRandom,
            child: Text(
              'Change Color',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
              primary: Colors.deepPurple,
            ),
          ),
        ));
  }
}

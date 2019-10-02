import 'package:exemplos_flutter/Loader/dot_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loader/Loader.dart';
import 'Loader/Loader2.dart';
import 'Loader/Loader3.dart';
import 'Loader/Loader4.dart';
import 'Loader/Loader5.dart';

void main() {
  runApp(MaterialApp(
    title: "Exemplos de Flutter",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.blue
  ];

  @override
  Widget build(BuildContext buildContext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Exemplos de Loader",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Loader(
                colors: colors,
                duration: Duration(milliseconds: 1200),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Loader2(
                color1: Colors.blue,
                color2: Colors.red,
                color3: Colors.green,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Loader3(
                radius: 15,
                dotRadius: 6,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Loader4(dotOneColor: Colors.indigoAccent, dotTwoColor: Colors.teal, dotThreeColor: Colors.pink, dotType: DotType.diamond,duration: Duration(milliseconds: 1500),)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Loader5(dotOneColor: Colors.indigoAccent, dotTwoColor: Colors.teal, dotThreeColor: Colors.pink, dotType: DotType.circle,dotIcon: Icon(Icons.adjust),duration: Duration(seconds: 1),)
            ],
          ),
        ),
      ],
    );
  }
}

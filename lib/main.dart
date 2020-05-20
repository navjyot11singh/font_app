import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String fontFamily = 'Lato'; //default font

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Font of this line will change',
                style: GoogleFonts.getFont(
                  //Google fonts dynamic load
                  fontFamily,
                  textStyle: TextStyle(
                    fontSize: 25,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    fontFamily = 'Noto Sans';
                  });
                },
                child: Text('Change Font'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

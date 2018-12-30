import 'package:audio_book/components/discovery/main.dart';
import 'package:audio_book/components/player/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Color(0xff333333),
          textTheme: TextTheme(
              subhead: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              button: TextStyle(fontSize: 18, color: Colors.blue))),
      initialRoute: '/discovery',
      routes: {
        '/': (context) => Player(),
        '/player': (context) => Player(),
        '/discovery': (context) => Discovery(),
      },
    );
  }
}
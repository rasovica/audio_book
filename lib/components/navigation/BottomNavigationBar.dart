import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final lightBottomNavigationBar = BottomAppBar(
  shape: CircularNotchedRectangle(),
  notchMargin: 4.0,
  child: new Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      IconButton(
        icon: Icon(FontAwesomeIcons.bookOpen),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.search),
        onPressed: () {},
        padding: EdgeInsets.only(right: 40.0),
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.listUl),
        onPressed: () {},
        padding: EdgeInsets.only(left: 40.0),
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.solidUser),
        onPressed: () {},
      ),
    ],
  ),
);
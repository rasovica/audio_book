import 'package:audio_book/components/discovery/DiscoveryRow.dart';
import 'package:audio_book/components/navigation/BottomNavigationBar.dart';
import 'package:audio_book/models/Book.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Discovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: ListView(
          children: <Widget>[
            DiscoveryRow("Books of the week", "/", [exampleBook, exampleBook, exampleBook]),
            DiscoveryRow("Recommendations", "/", [exampleBook, exampleBook, exampleBook]),
          ],
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(FontAwesomeIcons.play),
          onPressed: () {},
        ),
        bottomNavigationBar: lightBottomNavigationBar
    );
  }
}

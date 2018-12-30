import 'package:audio_book/models/Book.dart';
import 'package:flutter/material.dart';

class DiscoveryRow extends StatelessWidget {
  final String title;
  final String path;
  final List<Book> books;

  DiscoveryRow(this.title, this.path, this.books);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: <Widget>[
          DiscoveryWeeklyBookTitle(this.title, this.path),
          DiscoveryWeeklyBookOptions(this.books)
        ],
      ),
    );
  }
}

class DiscoveryWeeklyBookTitle extends StatelessWidget {
  final String title;
  final String path;

  DiscoveryWeeklyBookTitle(this.title, this.path);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(this.title, style: Theme.of(context).textTheme.subhead),
            Text("ALL", style: Theme.of(context).textTheme.button)
          ],
        ));
  }
}

class DiscoveryWeeklyBookOptions extends StatelessWidget {
  final List<Book> books;

  DiscoveryWeeklyBookOptions(this.books);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.38,
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20.0),
          scrollDirection: Axis.horizontal,
          itemCount: books.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return DiscoveryWeeklyOptionsItem(books[index]);
          }),
    );
  }
}

class DiscoveryWeeklyOptionsItem extends StatelessWidget {
  final Book book;

  DiscoveryWeeklyOptionsItem(this.book);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: () {

        },
        child: Container(
            margin: EdgeInsets.only(right: 20.0, top: 20.0),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    book.coverUrl,
                    width: size.width * 0.4,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16.0),
                    width: size.width * 0.4,
                    child: Text(
                      book.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 8.0),
                    width: size.width * 0.4,
                    child: Text(
                      book.author,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          color: Colors.white54),
                    )),
              ],
            )));
  }
}

class Book {
  final String coverUrl;
  final String title;
  final String author;
  final List<Chapter> chapters;

  Book(this.coverUrl, this.title, this.author, this.chapters);
}

class Chapter {
  final int section;
  final String name;
  final String reader;
  final int time;
  final String audioUrl;

  Chapter(this.section, this.name, this.reader, this.time, this.audioUrl);
}

final exampleBook = Book(
  "https://ia800602.us.archive.org/10/items/england_and_yesterday_1705_librivox/englandyesterday_1705.jpg",
  "England and Yesterday",
  "Louise Imogen Guiney",
  [Chapter(1, "London - I. On First Entering Westminster Abbey", "Tomas Peter", 67, "https://ia800602.us.archive.org/10/items/england_and_yesterday_1705_librivox/englandandyesterday_01_guiney_64kb.mp3")]
);
//  Q5
//  Create a class Book with private fields _title and _pages.- Add setters: reject empty titles and pages ≤ 0.- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.- In main(), create a book, print its title and estimated reading time

void main() {
  Book b1 = Book();
  b1.title = 'Drat';
  b1.pages = 50;
  print(
    'Book Title: ${b1.title} and estimated reading time = ${b1.readingTime}',
  );
}

class Book {
  String? _title;
  int? _pages ;

  set title(String title) {
    if (title.isNotEmpty) {
      this._title = title;
    } else {
      print('Invalid title');
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    } else {
      print('Invalid number of Pages');
    }
  }

  String get title => this._title !;
  int get readingTime => this._pages! * 2 ;
}

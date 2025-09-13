//  Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
//  only the movies with a rating above 7.

void main() {
  List<Movie> movies = [
    Movie('M1', 5.5),
    Movie('M2', 7.5),
    Movie('M3', 7.1),
    Movie('M4', 3.5),
  ];

  movies.forEach((movie) {
    if (movie.rating > 7) {
      print('Movie Title: ${movie.title} and Rating: ${movie.rating}');
    }
  });
}

class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}

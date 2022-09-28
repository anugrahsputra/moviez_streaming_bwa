class Movie {
  String? title;
  String? poster;
  String? genre;
  double? rating;
  Movie({
    this.title,
    this.genre,
    this.rating,
    this.poster,
  });
}

List<Movie> movieList = [
  Movie(
      title: "Fall",
      genre: "Thriller",
      rating: 4.0,
      poster:
          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/spCAxD99U1A6jsiePFoqdEcY0dG.jpg"),
  Movie(
      title: "Orphan: First Kill",
      genre: "Horror,Thriller",
      rating: 3.9,
      poster:
          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wSqAXL1EHVJ3MOnJzMhUngc8gFs.jpg"),
  Movie(
      title: "Beast",
      genre: "Adventure, Drama, Horror",
      rating: 4.0,
      poster:
          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/iRV0IB5xQeOymuGGUBarTecQVAl.jpg"),
  Movie(
      title: "Jujutsu Kaisen 0",
      genre: "Animation, Action, Fantasy",
      rating: 5,
      poster:
          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/23oJaeBh0FDk2mQ2P240PU9Xxfh.jpg"),
  Movie(
      title: "Samaritan",
      genre: "Action, Drama, Science Fiction",
      rating: 3.6,
      poster:
          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg"),
];

class Movie {
  String? title;
  String? poster;
  String? banner;
  String? genre;
  double? rating;
  Movie({
    this.title,
    this.genre,
    this.rating,
    this.poster,
    this.banner,
  });
}

List<Movie> movieList = [
  Movie(
    title: "John Wick 4",
    genre: "Action, Thriller, Crime",
    rating: 4.0,
    poster:
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2LBK2475hlrLQT6uwjrnVZ6vc0l.jpg",
    banner:
        "https://sm.ign.com/t/ign_fr/gallery/j/john-wick-/john-wick-4-the-cast-of-the-action-sequel_c5cz.1080.jpg",
  ),
  Movie(
    title: "Orphan: First Kill",
    genre: "Horror,Thriller",
    rating: 3.9,
    poster:
        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wSqAXL1EHVJ3MOnJzMhUngc8gFs.jpg",
    banner:
        "https://bacaterus.com/wp-content/uploads/2022/09/Orphan_First-Kill_Poster_.webp",
  ),
  Movie(
    title: "Jujutsu Kaisen 0",
    genre: "Animation, Action, Fantasy",
    rating: 5,
    poster:
        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/23oJaeBh0FDk2mQ2P240PU9Xxfh.jpg",
    banner:
        "https://i0.wp.com/butwhytho.net/wp-content/uploads/2022/02/Jujutsu-Kaisen-0-But-Why-Tho-1.jpg?w=800&ssl=1",
  ),
  Movie(
      title: "Beauty and The Beast",
      genre: "Family, Fantasy, Romance",
      rating: 5.0,
      poster:
          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hKegSKIDep2ewJWPUQD7u0KqFIp.jpg",
      banner: "https://wallpaper.dog/large/20558502.jpg"),
  Movie(
    title: "Mulan",
    genre: "Adventure, Fantasy, Drama",
    rating: 3.6,
    poster:
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg",
    banner:
        "https://movieden.net/wp-content/uploads/2020/03/mulan-2020-poster-550x309.jpeg",
  ),
];

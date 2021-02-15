class Movie {
  final int id;
  final double rating;
  final String plot, title, poster, year, genra;

  Movie(
      {this.poster,
      this.title,
      this.id,
      this.year,
      this.plot,
      this.genra,
      this.rating});
}

List<Movie> movies = [
  Movie(
    id: 1,
    title: "Death Note",
    year: "2006",
    poster: "assets/images/Death Note.jpg",
    rating: 4.1,
    genra: "mystère et thriller psychologique",
  ),
  Movie(
    id: 2,
    title: "Code Lyoko",
    year: "2003",
    poster: "assets/images/Code Lyoko.jpg",
    rating: 4.8,
    genra: "science-fiction",
  ),
  Movie(
    id: 3,
    title: "Hunter x Hunter",
    year: "2011",
    poster: "assets/images/Hunter x Hunter.jpg",
    rating: 4.5,
    genra: "récit d'aventure, de fantaisie et d'arts martiaux",
  ),
  Movie(
    id: 4,
    title: "My Hero Academia",
    year: "2014",
    poster: "assets/images/My Hero Academia.jpg",
    rating: 4.4,
    genra: "récit d'aventure, de fantaisie et de fiction de super-héros",
  ),
  Movie(
    id: 5,
    title: "Naruto",
    year: "1999",
    poster: "assets/images/Naruto.jpg",
    rating: 4,
    genra: "nekketsu et action‎",
  ),
  Movie(
    id: 6,
    title: "Shingeki No Kyojin",
    year: "2013",
    poster: "assets/images/Shingeki No Kyojin.jpg",
    rating: 4.5,
    genra: "action, dark fantaisie et horreur",
  ),
];

class MoviesDataModel {
  final int movieId;
  final String movieTitle;
  final String movieDescription;
  bool? watchLater;

  MoviesDataModel({
    required this.movieId,
    required this.movieTitle,
    required this.movieDescription,
    this.watchLater = false,
  });
}

import 'package:flutter/cupertino.dart';
import 'package:movie_app/core/constants/movie_data.dart';
import 'package:movie_app/data/movies_data_model.dart';

class MovieProvider extends ChangeNotifier {
  final List<MoviesDataModel> _movieList = MovieData.movieList;

  // Get all movies
  List<MoviesDataModel> get movieList => _movieList;

  // Get movies in watchlist
  List<MoviesDataModel> get movieWatchList =>
      _movieList.where((movie) => movie.watchLater == true).toList();

  // Add or remove movies from watchlist
  void addRemoveMovies(int movieId) {
    final movieItem =
        _movieList.firstWhere((movie) => movie.movieId == movieId);

    movieItem.watchLater = !(movieItem.watchLater ?? false);
    notifyListeners();
  }

  // Remove movie from watchlist  // remove this function, use the above one
  void removeMovie(int movieId) {
    final movieItem =
        _movieList.firstWhere((movie) => movie.movieId == movieId);

    if (movieItem.watchLater == true) {
      movieItem.watchLater = false;
      notifyListeners();
    }
  }
}

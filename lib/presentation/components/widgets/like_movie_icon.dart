// like button in listing page

import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/text_constants.dart';
import 'package:movie_app/presentation/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class LikeMovieIcon extends StatelessWidget {
  final int index;
  const LikeMovieIcon({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // check if movie exist in the wish list & show snack-bar
    void movieExistInWishList(final movie) {
      String text = movie.watchLater == true //
          ? TextConstants.movieAddedFromWishList
          : TextConstants.movieRemovedFromWishList;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
        ),
      );
    }

    // consumer
    return Consumer<MovieProvider>(
      builder: (context, movieProvider, child) {
        // final movie = MovieData.movieList[index];

        // get all movies from the movie list
        final movie = movieProvider.movieList[index];
        return GestureDetector(
          onTap: () {
            // add/remove movie
            movieProvider.addRemoveMovies(movie.movieId);
            // check if movie exist in the wish list & show snack-bar
            movieExistInWishList(movie); // move to provider class
          },
          child: Padding(
            // use positioned
            padding: EdgeInsets.all(4),
            child: Container(
              height: 14,
              width: 14,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(
                movie.watchLater == true //
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
                size: 10,
              ),
            ),
          ),
        );
      },
    );
  }
}

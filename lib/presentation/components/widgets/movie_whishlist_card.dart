import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color_constants.dart';
import 'package:movie_app/core/constants/image_constants.dart';
import 'package:movie_app/core/constants/text_style_constants.dart';
import 'package:movie_app/data/movies_data_model.dart';
import 'package:movie_app/presentation/components/widgets/delete_icon.dart';

class MovieWishlistCard extends StatelessWidget {
  final MoviesDataModel movie;
  const MovieWishlistCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // main card
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16),
      color: ColorConstants.cardColor,
      height: 130,
      // width: double.infinity,

      // all items
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie Image
          AspectRatio(
            aspectRatio: 95 / 130,
            child: Image.asset(
              ImagePathConstants.getImagePath(movie.movieId),
              fit: BoxFit.cover,
            ),
          ),

          // Movie Title & Delete Button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Movie Title
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 16,
                  ),
                  child: Text(
                    movie.movieTitle,
                    style: TextStyleConstants.movieTitleStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                // Delete Icon
                DeleteIcon(movie: movie),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

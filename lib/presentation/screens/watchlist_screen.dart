import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color_constants.dart';
import 'package:movie_app/core/constants/text_constants.dart';
import 'package:movie_app/core/constants/text_style_constants.dart';
import 'package:movie_app/presentation/common/app_bar_widget.dart';
import 'package:movie_app/presentation/components/widgets/movie_whishlist_card.dart';
import 'package:movie_app/presentation/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.blackColor,

      // App Bar
      appBar: AppBarWidget(),

      // Body
      body: Consumer<MovieProvider>(
        builder: (context, movieProvider, child) {
          final movieList = movieProvider.movieWatchList;

          if (movieList.isEmpty) {
            return Center(
              child: Text(
                TextConstants.noMovies,
                style: TextStyleConstants.appbarStyle,
              ),
            );
          }

          return ListView.separated(
            shrinkWrap: true, // min height
            padding: EdgeInsets.symmetric(horizontal: 10),
            separatorBuilder: (context, index) => SizedBox(height: 12),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              return MovieWishlistCard(movie: movieList[index]);
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color_constants.dart';
import 'package:movie_app/core/constants/movie_data.dart';
import 'package:movie_app/presentation/common/app_bar_widget.dart';
import 'package:movie_app/presentation/components/widgets/like_movie_icon.dart';
import 'package:movie_app/presentation/components/widgets/movie_image_widget.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.blackColor,
      // app bar
      appBar: AppBarWidget(actionsRequired: true),

      // body
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        // padding: EdgeInsets.zero,
        itemCount: MovieData.movieList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // mainAxisExtent: 160,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 102 / 160,
        ),
        itemBuilder: (context, index) {
          return Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              // image
              MovieImageWidget(index: index),

              // Like Button
              LikeMovieIcon(index: index),
            ],
          );
        },
      ),
    );
  }
}

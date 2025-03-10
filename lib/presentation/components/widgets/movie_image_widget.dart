// movie card image in list screen

import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/image_constants.dart';

class MovieImageWidget extends StatelessWidget {
  final int index;
  const MovieImageWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      //
      ImagePathConstants.getImagePath(index + 1),
      fit: BoxFit.cover,
    );
  }
}

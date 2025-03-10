import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color_constants.dart';

class TextStyleConstants {
  final whiteColor = Colors.white; // remove
  static const String fontFamily = 'Inter';

  // appBar text,
  static const TextStyle appbarStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    color: ColorConstants.whiteColor,
    fontWeight: FontWeight.w800,
    height: 1.0,
    letterSpacing: 0,
  );

  static const TextStyle movieTitleStyle = TextStyle(
    color: ColorConstants.whiteColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1,
    letterSpacing: 0,
  );
}

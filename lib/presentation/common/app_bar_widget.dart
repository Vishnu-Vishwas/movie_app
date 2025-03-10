import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color_constants.dart';
import 'package:movie_app/core/constants/text_constants.dart';
import 'package:movie_app/core/constants/text_style_constants.dart';
import 'package:movie_app/presentation/screens/watchlist_screen.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool actionsRequired;

  const AppBarWidget({super.key, this.actionsRequired = false}); // avoid bool

  @override
  Widget build(BuildContext context) {
    // nav to wishlist screen
    void navigateToWishListScreen() {
      // move outside build
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const WatchlistScreen(),
        ),
      );
    }

    return AppBar(
      backgroundColor: ColorConstants.blackColor,

      // titleSpacing: actionsRequired ? 17 : 0,
      // leadingWidth: , use this

      leading: actionsRequired == false
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 18,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,

      // title
      centerTitle: false,
      title: actionsRequired == true // remove true
          ? Text(TextConstants.movieListAppBarText)
          : Text(TextConstants.wishListAppBarText),

      titleTextStyle: TextStyleConstants.appbarStyle,

      // actions
      actions: actionsRequired
          ? [
              IconButton(
                // padding: EdgeInsets.zero,
                onPressed: () {
                  navigateToWishListScreen();
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

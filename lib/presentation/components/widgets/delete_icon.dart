import 'package:flutter/material.dart';
import 'package:movie_app/data/movies_data_model.dart';
import 'package:movie_app/presentation/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class DeleteIcon extends StatelessWidget {
  final MoviesDataModel movie;
  const DeleteIcon({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final movieProvider = context.read<MovieProvider>();

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: GestureDetector(
          onTap: () {
            movieProvider.removeMovie(movie.movieId);
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
            child: Icon(Icons.delete, color: Colors.black, size: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_streaming/model/movie.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    Key? key,
    required this.displayList,
    required this.index,
  }) : super(key: key);

  final List<Movie> displayList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: displayList[index].rating!,
      itemSize: 18,
      itemBuilder: (context, _) {
        return const Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
    );
  }
}

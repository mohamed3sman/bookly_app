import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});

  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 18,
        ),
        const SizedBox(width: 7),
        Text(
          rating.toString(),
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        const SizedBox(width: 8),
        Opacity(
          opacity: 0.5,
          child: Text(
            '$count',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}

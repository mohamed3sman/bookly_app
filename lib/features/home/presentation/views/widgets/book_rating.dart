import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(width: 7),
        Text(
          '4.8',
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        const SizedBox(width: 8),
        Text(
          '(2639)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}

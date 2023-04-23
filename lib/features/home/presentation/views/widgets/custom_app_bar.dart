import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 35, right: 15),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 23,
          ),
          const Spacer(),
          Image.asset(
            AssetsData.searchIcon,
            height: 32,
          )
        ],
      ),
    );
  }
}

import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 18),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Read Free Books'),
            ],
          ),
        ],
      ),
    );
  }
}

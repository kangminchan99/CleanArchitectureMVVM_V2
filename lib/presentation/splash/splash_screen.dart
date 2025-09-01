import 'package:cleanarchitecture_v2/core/presentation/components/medium_button.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash/splash_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.v96,
                Image.asset(
                  'assets/images/splash/splash_crown.png',
                ),
                Gaps.v14,
                Text(
                  '100K+ Premium Recipe',
                  style: TextStyles.mediumTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                Spacer(),
                Text(
                  'Get\nCooking',
                  style: TextStyles.headerTextBold.copyWith(
                    fontSize: Sizes.size44,
                    color: ColorStyles.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v20,
                Text(
                  'Simple way to find Tasty Recipe',
                  style: TextStyles.normalTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                Gaps.v64,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.size64,
                  ),
                  child: MediumButton(text: 'Start Cooking', onPressed: () {}),
                ),
                Gaps.v52,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

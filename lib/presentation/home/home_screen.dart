import 'package:cleanarchitecture_v2/core/presentation/components/search_input_field.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  const HomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size28),
        child: Column(
          children: [
            Gaps.v20,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello $name",
                      style: TextStyles.largeTextBold,
                    ),
                    Gaps.v5,
                    Text(
                      'What are you cooking today?',
                      style: TextStyles.smallTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: Sizes.size40,
                  height: Sizes.size40,
                  decoration: BoxDecoration(
                    color: ColorStyles.secondary40,
                    borderRadius: BorderRadius.circular(Sizes.size10),
                  ),
                  child: Image.asset('assets/images/home/default_person.png'),
                ),
              ],
            ),
            Gaps.v32,
            Row(
              children: [
                Expanded(
                  child: SearchInputField(placeHolder: 'Search Recipe'),
                ),
                Gaps.h20,
                Container(
                  width: Sizes.size40,
                  height: Sizes.size40,
                  decoration: BoxDecoration(
                    color: ColorStyles.primary100,
                    borderRadius: BorderRadius.circular(Sizes.size10),
                  ),
                  child: Icon(
                    Icons.tune,
                    color: ColorStyles.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

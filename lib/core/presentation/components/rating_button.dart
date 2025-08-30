import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class RatingButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  const RatingButton({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isSelected ? ColorStyles.primary100 : ColorStyles.white,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyles.smallTextRegular.copyWith(
              color: isSelected ? ColorStyles.white : ColorStyles.primary80,
            ),
          ),
          Gaps.h1,
          Icon(
            Icons.star,
            color: isSelected ? ColorStyles.white : ColorStyles.primary100,
            size: Sizes.size18,
          ),
        ],
      ),
      side: BorderSide(
        color: ColorStyles.primary100,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.size10),
      ),
    );
  }
}

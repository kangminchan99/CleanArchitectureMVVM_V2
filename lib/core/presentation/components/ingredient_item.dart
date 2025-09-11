import 'package:cleanarchitecture_v2/domain/model/ingredient/ingredient_model.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final IngredientModel ingredient;
  const IngredientItem({
    super.key,
    required this.ingredient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Sizes.size12,
        horizontal: Sizes.size16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size12),
        color: ColorStyles.gray4,
      ),
      child: Row(
        children: [
          Container(
            width: Sizes.size52,
            height: Sizes.size52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10),
              color: ColorStyles.white,
            ),
            child: Image.network(
              ingredient.image,
              width: Sizes.size40,
              height: Sizes.size40,
            ),
          ),
          Gaps.h16,
          Text(
            ingredient.name,
            style: TextStyles.normalTextBold,
          ),
          Spacer(),
          Text(
            '500g',
            style: TextStyles.smallTextRegular.copyWith(
              color: ColorStyles.gray3,
            ),
          ),
        ],
      ),
    );
  }
}

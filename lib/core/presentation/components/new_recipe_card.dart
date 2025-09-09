import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class NewRecipeCard extends StatelessWidget {
  final RecipeModel recipe;
  const NewRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127,
      width: 251,
      child: Stack(
        children: [
          Positioned(
            left: Sizes.size1,
            bottom: Sizes.size1,
            top: Sizes.size32,
            child: Container(
              padding: EdgeInsets.only(top: Sizes.size10, left: Sizes.size9),
              width: 250,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.size10),
                color: ColorStyles.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorStyles.gray4,
                    spreadRadius: Sizes.size1,
                    blurRadius: Sizes.size1,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: Sizes.size40,
            left: Sizes.size10,
            child: SizedBox(
              width: 140,
              child: Text(
                recipe.name,
                style: TextStyles.smallTextBold.copyWith(
                  color: ColorStyles.gray1,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Positioned(
            top: Sizes.size72,
            left: Sizes.size10,
            child: Row(
              children: List.generate(
                recipe.rating.toInt(),
                (index) => Icon(
                  Icons.star,
                  color: ColorStyles.rating,
                  size: Sizes.size12,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Sizes.size10,
            left: Sizes.size10,
            child: Row(
              children: [
                SizedBox(
                  width: Sizes.size24,
                  height: Sizes.size24,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(recipe.image),
                  ),
                ),
                Gaps.h8,
                Text(
                  recipe.chef,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray3,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: Sizes.size10,
            child: SizedBox(
              width: Sizes.size80,
              height: Sizes.size80 + Sizes.size6,
              child: CircleAvatar(
                backgroundImage: NetworkImage(recipe.image),
              ),
            ),
          ),
          Positioned(
            bottom: Sizes.size10,
            right: Sizes.size10,
            child: Row(
              children: [
                Icon(Icons.alarm, size: Sizes.size16, color: ColorStyles.gray3),
                Gaps.h5,
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

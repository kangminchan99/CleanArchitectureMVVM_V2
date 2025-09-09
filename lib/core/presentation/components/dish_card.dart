import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  final RecipeModel recipe;
  final void Function(RecipeModel recipe) onTapFavorite;
  const DishCard({
    super.key,
    required this.recipe,
    required this.onTapFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 230,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 150,
              height: 176,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.size12),
                color: ColorStyles.gray4,
              ),
              child: Center(
                child: SizedBox(
                  width: 130,
                  height: 42,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallerTextBold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Sizes.size10,
            left: Sizes.size10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray3,
                  ),
                ),
                Gaps.v5,
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextBold.copyWith(
                    color: ColorStyles.gray1,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: Sizes.size10,
            bottom: Sizes.size10,
            child: GestureDetector(
              onTap: () => onTapFavorite(recipe),
              child: Container(
                width: Sizes.size24,
                height: Sizes.size24,
                decoration: BoxDecoration(
                  color: ColorStyles.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.bookmark_outline,
                  color: recipe.isFavorite
                      ? ColorStyles.primary80
                      : ColorStyles.gray3,
                  size: Sizes.size16,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: SizedBox(
              width: 110,
              height: 110,
              child: CircleAvatar(
                backgroundImage: NetworkImage(recipe.image),
              ),
            ),
          ),
          Positioned(
            top: Sizes.size32,
            right: 0,
            child: Container(
              width: Sizes.size44,
              height: Sizes.size24,
              decoration: BoxDecoration(
                color: ColorStyles.secondary20,
                borderRadius: BorderRadius.circular(Sizes.size20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: ColorStyles.rating,
                    size: Sizes.size10,
                  ),
                  Gaps.h4,
                  Text(
                    recipe.rating.toString(),
                    style: TextStyles.smallerTextRegular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

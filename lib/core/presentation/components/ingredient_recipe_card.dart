import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class IngredientRecipeCard extends StatelessWidget {
  final RecipeModel recipe;
  final void Function(RecipeModel recipe) onTapFavorite;
  const IngredientRecipeCard({
    super.key,
    required this.recipe,
    required this.onTapFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: Sizes.size10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 315 / 150,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.size10),
                    image: DecorationImage(
                      image: NetworkImage(recipe.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: Sizes.size10,
                right: Sizes.size10,
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: ColorStyles.white,
                      size: Sizes.size16,
                    ),
                    Gaps.h5,
                    Text(
                      recipe.time,
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.white,
                      ),
                    ),
                    Gaps.h10,
                    GestureDetector(
                      onTap: () => onTapFavorite(recipe),
                      child: ClipOval(
                        child: Container(
                          color: ColorStyles.white,
                          padding: EdgeInsets.all(Sizes.size3),
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: ColorStyles.primary80,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: Sizes.size10,
                top: Sizes.size10,
                child: Container(
                  width: Sizes.size36,
                  height: Sizes.size16,
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
                        size: Sizes.size12,
                      ),
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
          Gaps.v10,
          Padding(
            padding: EdgeInsets.only(left: Sizes.size5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 194,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold,
                    maxLines: 2,
                  ),
                ),
                Spacer(),
                Text(
                  '(13k Reviews)',
                  style: TextStyle(color: ColorStyles.gray3),
                ),
                Gaps.h5,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

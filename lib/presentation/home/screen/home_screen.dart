import 'package:cleanarchitecture_v2/core/presentation/components/dish_card.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/new_recipe_card.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/recipe_category_selector.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/search_input_field.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/presentation/home/action/home_action.dart';
import 'package:cleanarchitecture_v2/presentation/home/state/home_state.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final HomeState state;
  final void Function(HomeAction action) onAction;
  const HomeScreen({
    super.key,
    required this.onAction,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.size32),
              child: Column(
                children: [
                  Gaps.v20,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello ${state.name}",
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
                        child: Image.asset(
                          'assets/images/home/default_person.png',
                        ),
                      ),
                    ],
                  ),
                  Gaps.v32,
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          // tap이 일어나는 영역에 대해 확실하게 해주는 역할
                          behavior: HitTestBehavior.opaque,
                          onTap: () => onAction(HomeAction.searchTapped()),
                          child: IgnorePointer(
                            child: SearchInputField(
                              placeHolder: 'Search Recipe',
                              isReadOnly: true,
                            ),
                          ),
                        ),
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
            Gaps.v16,
            Padding(
              padding: EdgeInsets.only(
                left: Sizes.size32,
                top: Sizes.size10,
                bottom: Sizes.size10,
              ),
              child: RecipeCategorySelector(
                categories: state.categories,
                selectedCategory: state.selectedCategory,
                onSelecteCategory: (category) =>
                    onAction(HomeAction.selectCategory(category)),
              ),
            ),
            Gaps.v16,
            SingleChildScrollView(
              padding: EdgeInsets.only(left: Sizes.size32),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.dishes
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.only(right: Sizes.size16),
                        child: DishCard(
                          recipe: e,
                          onTapFavorite: (RecipeModel recipe) {
                            onAction(HomeAction.favoriteTapped(recipe));
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Gaps.v20,
            Padding(
              padding: EdgeInsets.only(left: Sizes.size32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('New Recipes', style: TextStyles.normalTextBold),
                  Gaps.v5,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: state.newRecipes
                          .map(
                            (recipe) => Padding(
                              padding: EdgeInsets.only(right: Sizes.size16),
                              child: NewRecipeCard(
                                recipe: recipe,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.v80,
          ],
        ),
      ),
    );
  }
}

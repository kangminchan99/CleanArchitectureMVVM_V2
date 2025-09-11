import 'package:cleanarchitecture_v2/core/presentation/components/chef_profile.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/ingredient_item.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/ingredient_recipe_card.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/procedure_item.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/two_tab.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/action/ingredient_action.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/state/ingredient_state.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class IngredientScreen extends StatelessWidget {
  final IngredientState state;
  final void Function(IngredientAction action) onAction;

  const IngredientScreen({
    super.key,
    required this.state,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    print(state.selectedTapIndex);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: Sizes.size32),
          child: Column(
            children: [
              IngredientRecipeCard(
                recipe: state.recipe!,
                onTapFavorite: (recipe) {},
              ),
              Gaps.v10,
              ChefProfile(chef: state.chefs.first),
              Gaps.v20,
              TwoTab(
                selectedIndex: state.selectedTapIndex,
                labels: [
                  'Ingredient',
                  'Procedure',
                ],
                onChanged: (index) {
                  if (index == 0) {
                    onAction(const IngredientAction.onTapIngredient());
                  } else {
                    onAction(const IngredientAction.onTapProcedure());
                  }
                },
              ),
              Gaps.v36,

              Expanded(
                child: IndexedStack(
                  index: state.selectedTapIndex,
                  children: [
                    IngredientList(state: state),
                    ProcedureList(state: state),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProcedureList extends StatelessWidget {
  const ProcedureList({
    super.key,
    required this.state,
  });

  final IngredientState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.room_service,
              size: Sizes.size18,
              color: ColorStyles.gray3,
            ),
            Gaps.h5,
            Text(
              '1 serve',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.gray3,
              ),
            ),
            Spacer(),
            Text(
              '${state.procedures.length} steps',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.gray3,
              ),
            ),
          ],
        ),
        Gaps.v24,
        Expanded(
          child: ListView.builder(
            itemCount: state.procedures.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ProcedureItem(procedure: state.procedures[index]),
                  Gaps.v10,
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class IngredientList extends StatelessWidget {
  const IngredientList({
    super.key,
    required this.state,
  });

  final IngredientState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.room_service,
              size: Sizes.size18,
              color: ColorStyles.gray3,
            ),
            Gaps.h5,
            Text(
              '1 serve',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.gray3,
              ),
            ),
            Spacer(),
            Text(
              '${state.ingredients.length} items',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.gray3,
              ),
            ),
          ],
        ),
        Gaps.v24,
        Expanded(
          child: ListView.builder(
            itemCount: state.ingredients.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  IngredientItem(
                    ingredient: state.ingredients[index],
                  ),
                  Gaps.v10,
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

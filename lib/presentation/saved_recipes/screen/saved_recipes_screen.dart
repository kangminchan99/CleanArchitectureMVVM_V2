import 'package:cleanarchitecture_v2/core/presentation/components/recipe_card.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/action/saved_recipes_action.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/state/saved_recipes_state.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SavedRecipesScreen extends StatelessWidget {
  final SavedRecipesState state;
  final void Function(SavedRecipesAction action) onAction;
  const SavedRecipesScreen({
    super.key,
    required this.state,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Saved Recipes',
          style: TextStyles.mediumTextBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size32),
        child: state.isLoading
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : ListView.builder(
                itemCount: state.recipes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => onAction(
                      SavedRecipesAction.onTapRecipe(state.recipes[index]),
                    ),
                    child: RecipeCard(
                      recipe: state.recipes[index],
                      onTapFavorite: (RecipeModel recipe) {
                        onAction(
                          SavedRecipesAction.onTapFavorite(recipe),
                        );
                      },
                    ),
                  );
                },
              ),
      ),
    );
  }
}

import 'package:cleanarchitecture_v2/core/presentation/components/recipe_card.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/saved_recipes_state.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SavedRecipesScreen extends StatelessWidget {
  final SavedRecipesState state;
  const SavedRecipesScreen({
    super.key,
    required this.state,
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
                  return RecipeCard(recipe: state.recipes[index]);
                },
              ),
      ),
    );
  }
}

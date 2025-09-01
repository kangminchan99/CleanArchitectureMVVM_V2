import 'package:cleanarchitecture_v2/core/presentation/components/recipe_card.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SavedRecipesScreen extends StatelessWidget {
  final List<RecipeModel> recipes;
  const SavedRecipesScreen({
    super.key,
    required this.recipes,
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
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          },
        ),
      ),
    );
  }
}

import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';

abstract interface class RecentSearchRecipeRepository {
  Future<List<RecipeModel>> getRecentSearchRecipes();

  Future<void> updateRecentSearchRecipes(List<RecipeModel> recipes);
}

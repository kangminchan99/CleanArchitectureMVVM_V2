import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';

abstract interface class RecipeRepository {
  Future<List<RecipeModel>> getRecipes();

  Future<RecipeModel?> getRecipe(int id);
}

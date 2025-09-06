import 'package:cleanarchitecture_v2/core/domain/error/result.dart';
import 'package:cleanarchitecture_v2/domain/error/new_recipe_error.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetNewRecipesUsecase {
  final RecipeRepository _recipeRepository;

  const GetNewRecipesUsecase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<Result<List<RecipeModel>, NewRecipeError>> execute() async {
    try {
      final recipes = await _recipeRepository.getRecipes();

      if (recipes.isEmpty) {
        return Result.error(NewRecipeError.noRecipe);
      }

      if (recipes.any((e) => e.category.isEmpty)) {
        return Result.error(NewRecipeError.invalidCategory);
      }

      return Result.success(recipes.take(5).toList());
    } catch (e) {
      return Result.error(NewRecipeError.unknown);
    }
  }
}

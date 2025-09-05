import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetDishesByCategoryUsecase {
  final RecipeRepository _recipeRepository;

  GetDishesByCategoryUsecase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<List<RecipeModel>> execute(String category) async {
    final recipes = await _recipeRepository.getRecipes();

    if (category == 'All') {
      return recipes;
    }
    return recipes.where((recipe) => recipe.category == category).toList();
  }
}

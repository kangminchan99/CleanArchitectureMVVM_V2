import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class SearchRecipesUsecase {
  final RecipeRepository _recipeRepository;

  SearchRecipesUsecase({required RecipeRepository recipeRepository})
    : _recipeRepository = recipeRepository;

  Future<List<RecipeModel>> excute(String query) async {
    final results = (await _recipeRepository.getRecipes()).where(
      (e) => e.name.toLowerCase().contains(query.toLowerCase()),
    );
    return results.toList();
  }
}

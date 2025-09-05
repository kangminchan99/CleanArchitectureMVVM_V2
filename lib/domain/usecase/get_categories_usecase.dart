import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetCategoriesUsecase {
  final RecipeRepository _recipeRepository;

  GetCategoriesUsecase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<List<String>> execute() async {
    final recipes = await _recipeRepository.getRecipes();

    return ['All', ...recipes.map((e) => e.category).toSet()];
  }
}

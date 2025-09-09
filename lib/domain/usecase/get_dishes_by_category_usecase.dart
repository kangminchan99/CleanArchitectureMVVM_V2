import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetDishesByCategoryUsecase {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  GetDishesByCategoryUsecase({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  }) : _recipeRepository = recipeRepository,
       _bookmarkRepository = bookmarkRepository;

  Stream<List<RecipeModel>> execute(String category) async* {
    final recipes = await _recipeRepository.getRecipes();
    final filteredRecipes = recipes.where(
      (recipe) => category == 'All' || recipe.category == category,
    );

    await for (final bookmarkIds in _bookmarkRepository.bookmarkStream()) {
      yield filteredRecipes
          .map((e) => e.copyWith(isFavorite: bookmarkIds.contains(e.id)))
          .toList();
    }
  }
}

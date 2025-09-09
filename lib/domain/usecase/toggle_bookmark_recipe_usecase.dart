import 'package:cleanarchitecture_v2/core/domain/error/result.dart';
import 'package:cleanarchitecture_v2/domain/error/bookmark_error.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class ToggleBookmarkRecipeUsecase {
  final BookmarkRepository _bookmarkRepository;
  final RecipeRepository _recipeRepository;
  ToggleBookmarkRecipeUsecase({
    required BookmarkRepository bookmarkRepository,
    required RecipeRepository recipeRepository,
  }) : _bookmarkRepository = bookmarkRepository,
       _recipeRepository = recipeRepository;

  Future<Result<List<RecipeModel>, BookmarkError>> execute(
    int recipeId,
  ) async {
    try {
      final recipe = await _recipeRepository.getRecipe(recipeId);

      if (recipe == null) {
        return Result.error(BookmarkError.notFound);
      }

      await _bookmarkRepository.toggle(recipeId);
      final recipes = await _recipeRepository.getRecipes();

      final ids = await _bookmarkRepository.getBookmarks();

      return Result.success(
        recipes.map((e) {
          if (ids.contains(e.id)) {
            return e.copyWith(isFavorite: true);
          }
          return e;
        }).toList(),
      );
    } catch (e) {
      return Result.error(BookmarkError.unknown);
    }
  }
}

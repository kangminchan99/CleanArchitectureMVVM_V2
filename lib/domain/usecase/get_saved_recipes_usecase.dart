import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetSavedRecipesUsecase {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  const GetSavedRecipesUsecase({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  }) : _recipeRepository = recipeRepository,
       _bookmarkRepository = bookmarkRepository;

  Future<List<RecipeModel>> execute() async {
    final bookMarkIds = await _bookmarkRepository.getBookmarks();
    final recipes = await _recipeRepository.getRecipes();

    return recipes.where((e) => bookMarkIds.contains(e.id)).toList();
  }
}

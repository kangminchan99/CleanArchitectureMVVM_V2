import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
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

  Stream<List<RecipeModel>> execute() async* {
    final recipes = await _recipeRepository.getRecipes();

    await for (final bookMarkIds in _bookmarkRepository.bookmarkStream()) {
      // yield키워드를 써서 북마크 설정이 된 레시피 정보만 내보낼 수 있음
      yield recipes.where((e) => bookMarkIds.contains(e.id)).toList();
    }
  }
}

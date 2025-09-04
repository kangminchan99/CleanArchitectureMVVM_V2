import 'package:cleanarchitecture_v2/domain/data_source/local_storage.dart';
import 'package:cleanarchitecture_v2/domain/filter/filter_state.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class SearchRecipesUsecase {
  final RecipeRepository _recipeRepository;
  final LocalStorage _localStorage;

  SearchRecipesUsecase({
    required RecipeRepository recipeRepository,
    required LocalStorage localStorage,
  }) : _recipeRepository = recipeRepository,
       _localStorage = localStorage;

  Future<List<RecipeModel>> excute(
    String query,
    FilterState filterState,
  ) async {
    final results = (await _recipeRepository.getRecipes())
        .where(
          (e) => e.name.toLowerCase().contains(query.toLowerCase()),
        )
        .where((e) {
          if (filterState.time == 'All') {
            return true;
          } else {
            return filterState.time == e.time;
          }
        })
        .where((e) => e.rating >= filterState.rate)
        .where((e) {
          if (filterState.category == 'All') {
            return true;
          } else {
            return filterState.category == e.category;
          }
        });

    await _localStorage.save({
      'recipes': results.map((e) => e.toJson()),
    });

    return results.toList();
  }
}

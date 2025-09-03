import 'package:cleanarchitecture_v2/domain/data_source/local_storage.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRecipeRepositoryImpl
    implements RecentSearchRecipeRepository {
  final LocalStorage _localStorage;

  MockRecentSearchRecipeRepositoryImpl({
    required LocalStorage localStorage,
  }) : _localStorage = localStorage;

  @override
  Future<List<RecipeModel>> getRecentSearchRecipes() async {
    try {
      final json = await _localStorage.load();
      return (json['recipes'] as Iterable)
          .map((e) => RecipeModel.fromJson(e))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<void> updateRecentSearchRecipes(List<RecipeModel> recipes) async {
    await _localStorage.save({
      'recipes': recipes.map((e) => e.toJson()).toList(),
    });
  }
}

import 'package:cleanarchitecture_v2/data/data_source/recipe_data_source.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRecipeRepositoryImpl
    implements RecentSearchRecipeRepository {
  final RecipeDataSource _recipeDataSource;

  MockRecentSearchRecipeRepositoryImpl({
    required RecipeDataSource recipeDataSource,
  }) : _recipeDataSource = recipeDataSource;

  @override
  Future<List<RecipeModel>> getRecentSearchRecipes() async {
    final recipes = await _recipeDataSource.getRecipes();
    return recipes.map((e) => RecipeModel.fromJson(e)).toList();
  }

  @override
  Future<void> updateRecentSearchRecipes(List<RecipeModel> recipes) async {}
}

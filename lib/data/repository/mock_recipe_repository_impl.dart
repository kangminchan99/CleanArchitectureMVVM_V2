import 'package:cleanarchitecture_v2/domain/data_source/recipe_data_source.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  MockRecipeRepositoryImpl({required RecipeDataSource recipeDataSource})
    : _recipeDataSource = recipeDataSource;

  // id로 레시피 찾기
  @override
  Future<RecipeModel?> getRecipe(int id) async {
    final recipes = await getRecipes();
    return recipes.where((e) => e.id == id).firstOrNull;
  }

  // 모든 레시피 가져오기
  @override
  Future<List<RecipeModel>> getRecipes() async {
    final recipes = await _recipeDataSource.getRecipes();

    return recipes.map((e) => RecipeModel.fromJson(e)).toList();
  }
}

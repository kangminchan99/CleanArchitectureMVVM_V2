import 'dart:io';

import 'package:cleanarchitecture_v2/domain/data_source/recipe_data_source.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class ErrorMockRecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  ErrorMockRecipeRepositoryImpl({required RecipeDataSource recipeDataSource})
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
    throw Exception();
  }
}

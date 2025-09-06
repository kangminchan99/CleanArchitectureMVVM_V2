import 'dart:io';

import 'package:cleanarchitecture_v2/core/domain/error/network_error.dart';
import 'package:cleanarchitecture_v2/core/domain/error/result.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';

class GetCategoriesUsecase {
  final RecipeRepository _recipeRepository;

  GetCategoriesUsecase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<Result<List<String>, NetworkError>> execute() async {
    try {
      final recipes = await _recipeRepository.getRecipes();

      return Result.success(['All', ...recipes.map((e) => e.category).toSet()]);
      // 네트워크 통신 에러
    } on SocketException {
      return Result.error(NetworkError.noInternet);
    } catch (e) {
      return Result.error(NetworkError.unknown);
    }
  }
}

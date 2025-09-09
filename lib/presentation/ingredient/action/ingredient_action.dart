import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_action.freezed.dart';

@freezed
sealed class IngredientAction with _$IngredientAction {
  const factory IngredientAction.onTapFavorite(RecipeModel recipe) =
      OnTapFavorite;
  const factory IngredientAction.onTapIngredient(RecipeModel recipe) =
      OnTapIngredient;
  const factory IngredientAction.onTapProcedure(int recipeId) = OnTapProcedure;
  const factory IngredientAction.onTapFollow(RecipeModel recipe) = OnTapFollow;
  const factory IngredientAction.loadRecipe(int recipeId) = LoadRecipe;
}

import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_action.freezed.dart';

@freezed
sealed class IngredientAction with _$IngredientAction {
  const factory IngredientAction.onTapFavorite(RecipeModel recipe) =
      OnTapFavorite;
  const factory IngredientAction.onTapIngredient() = OnTapIngredient;
  const factory IngredientAction.onTapProcedure() = OnTapProcedure;
  const factory IngredientAction.onTapFollow(RecipeModel recipe) = OnTapFollow;
  const factory IngredientAction.loadRecipe(int recipeId) = LoadRecipe;
  const factory IngredientAction.onTapShare(String link) = OnTapShare;
  const factory IngredientAction.onTapRateRecipe(RecipeModel recipe, int rate) =
      OnTapRateRecipe;
  const factory IngredientAction.onTapUnsave(RecipeModel recipe) = OnTapUnsave;
}

import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipes_action.freezed.dart';

@freezed
sealed class SavedRecipesAction with _$SavedRecipesAction {
  const factory SavedRecipesAction.onTapFavorite(RecipeModel recipe) =
      OnTapFavorite;

  const factory SavedRecipesAction.onTapRecipe(RecipeModel recipe) =
      OnTapRecipe;
}

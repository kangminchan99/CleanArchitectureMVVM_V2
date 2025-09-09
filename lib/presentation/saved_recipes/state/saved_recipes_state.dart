import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipes_state.freezed.dart';

@freezed
class SavedRecipesState with _$SavedRecipesState {
  @override
  final List<RecipeModel> recipes;
  @override
  final bool isLoading;

  SavedRecipesState({
    this.recipes = const [],
    this.isLoading = false,
  });
}

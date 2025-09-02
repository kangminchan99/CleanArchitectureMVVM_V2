import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';

class SavedRecipesState {
  // 상태
  final List<RecipeModel> recipes;
  final bool isLoading;

  SavedRecipesState({
    this.recipes = const [],
    this.isLoading = false,
  });

  SavedRecipesState copyWith({
    List<RecipeModel>? recipes,
    bool? isLoading,
  }) {
    return SavedRecipesState(
      recipes: recipes ?? this.recipes,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

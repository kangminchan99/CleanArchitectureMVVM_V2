import 'dart:async';

import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/toggle_bookmark_recipe_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/action/saved_recipes_action.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/state/saved_recipes_state.dart';
import 'package:flutter/material.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUsecase _getSavedRecipesUsecase;
  final ToggleBookmarkRecipeUsecase _toggleBookmarkRecipeUsecase;
  StreamSubscription? _streamSubscription;

  // 상태
  SavedRecipesState _state = SavedRecipesState();

  SavedRecipesState get state => _state;

  SavedRecipesViewModel({
    required GetSavedRecipesUsecase getSavedRecipesUsecase,
    required ToggleBookmarkRecipeUsecase toggleBookmarkRecipeUsecase,
  }) : _getSavedRecipesUsecase = getSavedRecipesUsecase,
       _toggleBookmarkRecipeUsecase = toggleBookmarkRecipeUsecase {
    // 스트림 형태로 구독
    _streamSubscription = _getSavedRecipesUsecase.execute().listen((recipes) {
      _state = state.copyWith(
        recipes: recipes,
      );
      notifyListeners();
    });
  }

  void _onTapFavorite(int recipeId) async {
    await _toggleBookmarkRecipeUsecase.execute(recipeId);
  }

  void onAction(SavedRecipesAction action) async {
    switch (action) {
      case OnTapFavorite():
        _onTapFavorite(action.recipe.id);
      case OnTapRecipe():
    }
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}

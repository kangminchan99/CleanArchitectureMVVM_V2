import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/saved_recipes_state.dart';
import 'package:flutter/material.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUsecase _getSavedRecipesUsecase;

  // 상태
  SavedRecipesState _state = SavedRecipesState();

  SavedRecipesState get state => _state;

  SavedRecipesViewModel({
    required GetSavedRecipesUsecase getSavedRecipesUsecase,
  }) : _getSavedRecipesUsecase = getSavedRecipesUsecase {
    // SavedRecipesViewModel 생성 시 바로 호출 됨
    _loadRecipeData();
  }

  Future<void> _loadRecipeData() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      recipes: await _getSavedRecipesUsecase.execute(),
      isLoading: false,
    );
    notifyListeners();
  }
}

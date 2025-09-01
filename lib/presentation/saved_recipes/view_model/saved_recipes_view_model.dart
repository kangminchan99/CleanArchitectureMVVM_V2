import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:flutter/material.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUsecase _getSavedRecipesUsecase;

  // 상태
  List<RecipeModel> _recipes = [];
  // get -> 외부에서 읽기만 접근 가능하게
  List<RecipeModel> get recipes => List.unmodifiable(_recipes);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  SavedRecipesViewModel({
    required GetSavedRecipesUsecase getSavedRecipesUsecase,
  }) : _getSavedRecipesUsecase = getSavedRecipesUsecase {
    // SavedRecipesViewModel 생성 시 바로 호출 됨
    _loadRecipeData();
  }

  Future<void> _loadRecipeData() async {
    _isLoading = true;
    notifyListeners();
    _recipes = await _getSavedRecipesUsecase.execute();
    _isLoading = false;
    notifyListeners();
  }
}

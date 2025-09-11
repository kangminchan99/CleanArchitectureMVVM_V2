import 'dart:developer';

import 'package:cleanarchitecture_v2/domain/repository/chef_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/ingredient_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/procedure_repository.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_dishes_by_category_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/action/ingredient_action.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/state/ingredient_state.dart';
import 'package:flutter/widgets.dart';

class IngredientViewModel with ChangeNotifier {
  final IngredientRepository _ingredientRepository;
  final ProcedureRepository _procedureRepository;
  final ChefRepository _chefRepository;
  final GetDishesByCategoryUsecase _getDishesByCategoryUsecase;

  IngredientState _state = IngredientState();

  IngredientState get state => _state;

  IngredientViewModel({
    required IngredientRepository ingredientRepository,
    required ProcedureRepository procedureRepository,
    required ChefRepository chefRepository,
    required GetDishesByCategoryUsecase getDishesByCategoryUsecase,
  }) : _ingredientRepository = ingredientRepository,
       _procedureRepository = procedureRepository,
       _chefRepository = chefRepository,
       _getDishesByCategoryUsecase = getDishesByCategoryUsecase;

  void onAction(IngredientAction action) async {
    switch (action) {
      case LoadRecipe():
        _loadRecipe(action.recipeId);
      case OnTapFavorite():
      case OnTapIngredient():
        _changeTap(0);
      case OnTapProcedure():
        _changeTap(1);
      case OnTapShare():
        log(action.link);
      case OnTapFollow():
      case OnTapRateRecipe():
        // TODO: Handle this case.
        throw UnimplementedError();
      case OnTapUnsave():
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  void _changeTap(int index) {
    _state = state.copyWith(selectedTapIndex: index);
    notifyListeners();
  }

  void _getIngredients() async {
    final ingredients = await _ingredientRepository.getIngredients();
    _state = state.copyWith(ingredients: ingredients);
  }

  void _getProcedures() async {
    if (state.recipe != null) {
      final recipeId = state.recipe!.id;
      final procedures = await _procedureRepository.getProcedureById(
        recipeId,
      );
      _state = state.copyWith(
        procedures: procedures.where((e) => e.recipeId == recipeId).toList(),
      );
    }
  }

  void _getChef() async {
    if (state.recipe != null) {
      final chefId = state.recipe!.id;
      final chefs = await _chefRepository.getChefById(chefId);
      _state = state.copyWith(
        chefs: chefs.where((e) => e.id == chefId).toList(),
      );
    }
  }

  void _loadRecipe(int recipeId) async {
    (_getDishesByCategoryUsecase.execute('All')).listen((recipes) {
      final recipe = recipes.firstWhere((e) => e.id == recipeId);
      _state = _state.copyWith(recipe: recipe);

      _getIngredients();
      _getProcedures();
      _getChef();

      notifyListeners();
    });
  }
}

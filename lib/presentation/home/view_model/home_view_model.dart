import 'dart:async';

import 'package:cleanarchitecture_v2/core/domain/error/network_error.dart';
import 'package:cleanarchitecture_v2/core/domain/error/result.dart';
import 'package:cleanarchitecture_v2/domain/error/new_recipe_error.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_categories_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_dishes_by_category_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_new_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/home/home_state.dart';
import 'package:flutter/widgets.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUsecase _getCategoriesUsecase;
  final GetDishesByCategoryUsecase _getDishesByCategoryUsecase;
  final GetNewRecipesUsecase _getNewRecipesUsecase;

  // 단발성 상태는 Stream 사용 아닐경우 Stream 없이
  final _eventController = StreamController<NetworkError>();

  Stream<NetworkError> get eventStream => _eventController.stream;

  HomeViewModel({
    required GetCategoriesUsecase getCategoriesUsecase,
    required GetDishesByCategoryUsecase getDishesByCategoryUsecase,
    required GetNewRecipesUsecase getNewRecipesUsecase,
  }) : _getCategoriesUsecase = getCategoriesUsecase,
       _getDishesByCategoryUsecase = getDishesByCategoryUsecase,
       _getNewRecipesUsecase = getNewRecipesUsecase {
    _fetchCategories();
    _fetchNewRecipes();
  }

  HomeState _state = HomeState();

  HomeState get state => _state;

  Future<void> _fetchCategories() async {
    final result = await _getCategoriesUsecase.execute();

    switch (result) {
      case ResultSuccess<List<String>, NetworkError>():
        _state = state.copyWith(
          categories: result.data,
          selectedCategory: 'All',
        );
        await _fetchDishesByCategory('All');
        notifyListeners();
      case ResultError<List<String>, NetworkError>():
        switch (result.error) {
          case NetworkError.requestTimeout:
          case NetworkError.noInternet:
          case NetworkError.serverError:
          case NetworkError.unknown:
        }
        _eventController.add(result.error);
    }
  }

  Future<void> _fetchDishesByCategory(String category) async {
    final dishes = await _getDishesByCategoryUsecase.execute(category);
    _state = state.copyWith(
      dishes: dishes,
    );
    notifyListeners();
  }

  Future<void> onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();

    await _fetchDishesByCategory(category);
  }

  Future<void> _fetchNewRecipes() async {
    final result = await _getNewRecipesUsecase.execute();

    switch (result) {
      case ResultSuccess<List<RecipeModel>, NewRecipeError>():
        _state = state.copyWith(newRecipes: result.data);
        notifyListeners();
      case ResultError<List<RecipeModel>, NewRecipeError>():
        switch (result.error) {
          case NewRecipeError.noRecipe:
          case NewRecipeError.invalidCategory:
          case NewRecipeError.unknown:
        }
    }
  }
}

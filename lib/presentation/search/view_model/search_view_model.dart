import 'package:cleanarchitecture_v2/domain/repository/recent_search_recipe_repository.dart';
import 'package:cleanarchitecture_v2/domain/usecase/search_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/search/search_state.dart';
import 'package:flutter/material.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;
  final SearchRecipesUsecase _searchRecipesUsecase;

  SearchViewModel({
    required RecentSearchRecipeRepository recentSearchRecipeRepository,
    required SearchRecipesUsecase searchRecipesUsecase,
  }) : _recentSearchRecipeRepository = recentSearchRecipeRepository,
       _searchRecipesUsecase = searchRecipesUsecase {
    _loadRecentSearchRecipes();
  }

  SearchState _state = SearchState();

  SearchState get state => _state;

  Future<void> _loadRecentSearchRecipes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      isLoading: false,
      recipes: await _recentSearchRecipeRepository.getRecentSearchRecipes(),
    );

    notifyListeners();
  }

  Future<void> searchRecipes(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final recipes = await _searchRecipesUsecase.excute(query);

    _state = state.copyWith(
      isLoading: false,
      recipes: recipes,
      searchTitle: 'Search Result',
      resultsCount: '${recipes.length} results',
    );

    notifyListeners();
  }
}

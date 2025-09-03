import 'package:cleanarchitecture_v2/domain/repository/recent_search_recipe_repository.dart';
import 'package:cleanarchitecture_v2/presentation/search/search_state.dart';
import 'package:flutter/material.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  SearchViewModel({
    required RecentSearchRecipeRepository recentSearchRecipeRepository,
  }) : _recentSearchRecipeRepository = recentSearchRecipeRepository {
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
}

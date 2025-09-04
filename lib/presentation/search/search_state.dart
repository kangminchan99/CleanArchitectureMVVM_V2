import 'package:cleanarchitecture_v2/domain/filter/filter_state.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  @override
  final List<RecipeModel> recipes;
  @override
  final bool isLoading;
  @override
  final String searchTitle;
  @override
  final String resultsCount;
  @override
  final FilterState filterState;

  SearchState({
    this.recipes = const [],
    this.isLoading = false,
    this.searchTitle = 'Recent Search',
    this.resultsCount = '',
    FilterState? filterState,
  }) : filterState =
           filterState ?? FilterState(time: '', rate: 4, category: '');
}

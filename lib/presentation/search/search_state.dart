import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  @override
  final List<RecipeModel> recipes;
  @override
  final bool isLoading;

  SearchState({
    this.recipes = const [],
    this.isLoading = false,
  });
}

import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  @override
  final String selectedCategory;
  @override
  final List<String> categories;
  @override
  final List<RecipeModel> dishes;
  @override
  final List<RecipeModel> newRecipes;
  @override
  final String name;

  HomeState({
    this.selectedCategory = 'All',
    this.categories = const [],
    this.dishes = const [],
    this.newRecipes = const [],
    this.name = '',
  });
}

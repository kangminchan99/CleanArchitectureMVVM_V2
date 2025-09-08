import 'package:cleanarchitecture_v2/domain/model/recipe_ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';

part 'recipe_model.g.dart';

@freezed
abstract class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required String category,
    required int id,
    required String name,
    required String image,
    required String chef,
    required String time,
    required double rating,
    required List<RecipeIngredientModel> ingredients,
    @Default(false) bool isFavorite,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}

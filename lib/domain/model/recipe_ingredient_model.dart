import 'package:cleanarchitecture_v2/domain/model/ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredient_model.freezed.dart';

part 'recipe_ingredient_model.g.dart';

@freezed
abstract class RecipeIngredientModel with _$RecipeIngredientModel {
  const factory RecipeIngredientModel({
    required IngredientModel ingredient,
    required int amount,
  }) = _RecipeIngredientModel;

  factory RecipeIngredientModel.fromJson(Map<String, Object?> json) =>
      _$RecipeIngredientModelFromJson(json);
}

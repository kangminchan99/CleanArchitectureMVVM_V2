import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_model.freezed.dart';

part 'ingredient_model.g.dart';

@freezed
abstract class IngredientModel with _$IngredientModel {
  const factory IngredientModel({
    required int id,
    required String name,
    required String image,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, Object?> json) =>
      _$IngredientModelFromJson(json);
}

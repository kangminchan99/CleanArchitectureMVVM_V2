// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeIngredientModel _$RecipeIngredientModelFromJson(
  Map<String, dynamic> json,
) => _RecipeIngredientModel(
  ingredient: IngredientModel.fromJson(
    json['ingredient'] as Map<String, dynamic>,
  ),
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$RecipeIngredientModelToJson(
  _RecipeIngredientModel instance,
) => <String, dynamic>{
  'ingredient': instance.ingredient,
  'amount': instance.amount,
};

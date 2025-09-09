// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientState _$IngredientStateFromJson(Map<String, dynamic> json) =>
    _IngredientState(
      recipe: json['recipe'] == null
          ? null
          : RecipeModel.fromJson(json['recipe'] as Map<String, dynamic>),
      ingredients:
          (json['ingredients'] as List<dynamic>?)
              ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      procedures:
          (json['procedures'] as List<dynamic>?)
              ?.map((e) => ProcedureModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$IngredientStateToJson(_IngredientState instance) =>
    <String, dynamic>{
      'recipe': instance.recipe,
      'ingredients': instance.ingredients,
      'procedures': instance.procedures,
    };

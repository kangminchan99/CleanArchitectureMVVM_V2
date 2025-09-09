// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => _RecipeModel(
  category: json['category'] as String,
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
  chef: json['chef'] as String,
  time: json['time'] as String,
  rating: (json['rating'] as num).toDouble(),
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => RecipeIngredientModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$RecipeModelToJson(_RecipeModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'chef': instance.chef,
      'time': instance.time,
      'rating': instance.rating,
      'ingredients': instance.ingredients,
      'isFavorite': instance.isFavorite,
    };

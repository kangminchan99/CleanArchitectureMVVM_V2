import 'package:cleanarchitecture_v2/domain/model/recipe_ingredient_model.dart';

class RecipeModel {
  final String category;
  final int id;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredientModel> ingredients;

  RecipeModel({
    required this.category,
    required this.id,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  RecipeModel.fromJson(Map<String, dynamic> json)
    : category = json['category'] as String,
      id = json['id'] as int,
      name = json['name'] as String,
      image = json['image'] as String,
      chef = json['chef'] as String,
      time = json['time'] as String,
      rating = json['rating'].toDouble(),
      ingredients = (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredientModel.fromJson(e))
          .toList();

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'id': id,
      'name': name,
      'image': image,
      'chef': chef,
      'time': time,
      'rating': rating,
      'ingredients': ingredients.map((e) => e.toJson()),
    };
  }
}

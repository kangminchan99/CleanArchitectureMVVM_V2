import 'package:cleanarchitecture_v2/domain/model/ingredient_model.dart';

class RecipeIngredientModel {
  final IngredientModel ingredient;
  final int amount;

  RecipeIngredientModel({
    required this.ingredient,
    required this.amount,
  });

  RecipeIngredientModel.fromJson(Map<String, dynamic> json)
    : ingredient = IngredientModel.fromJson(json['ingredient']),
      amount = json['amount'] as int;

  Map<String, dynamic> toJson() {
    return {
      'ingredient': ingredient.toJson(),
      'amount': amount,
    };
  }
}

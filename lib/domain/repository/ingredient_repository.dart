import 'package:cleanarchitecture_v2/domain/model/ingredient/ingredient_model.dart';

abstract interface class IngredientRepository {
  Future<List<IngredientModel>> getIngredients();
}

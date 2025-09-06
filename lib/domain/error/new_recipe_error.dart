import 'package:cleanarchitecture_v2/core/domain/error/error.dart';

enum NewRecipeError implements ErrorHandler {
  noRecipe,
  invalidCategory,
  unknown,
}

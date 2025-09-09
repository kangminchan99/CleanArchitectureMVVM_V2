import 'package:cleanarchitecture_v2/domain/model/ingredient/ingredient_model.dart';
import 'package:cleanarchitecture_v2/domain/model/procedure/procedure_model.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_state.freezed.dart';

part 'ingredient_state.g.dart';

@freezed
abstract class IngredientState with _$IngredientState {
  const factory IngredientState({
    RecipeModel? recipe,
    @Default([]) List<IngredientModel> ingredients,
    @Default([]) List<ProcedureModel> procedures,
  }) = _IngredientState;

  factory IngredientState.fromJson(Map<String, Object?> json) =>
      _$IngredientStateFromJson(json);
}

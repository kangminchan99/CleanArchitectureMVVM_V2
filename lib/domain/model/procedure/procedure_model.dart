import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_model.freezed.dart';
part 'procedure_model.g.dart';

@freezed
abstract class ProcedureModel with _$ProcedureModel {
  const factory ProcedureModel({
    required int recipeId,
    required int step,
    required String content,
  }) = _ProcedureModel;

  factory ProcedureModel.fromJson(Map<String, Object?> json) =>
      _$ProcedureModelFromJson(json);
}

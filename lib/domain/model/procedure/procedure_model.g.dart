// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procedure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcedureModel _$ProcedureModelFromJson(Map<String, dynamic> json) =>
    _ProcedureModel(
      recipeId: (json['recipeId'] as num).toInt(),
      step: (json['step'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$ProcedureModelToJson(_ProcedureModel instance) =>
    <String, dynamic>{
      'recipeId': instance.recipeId,
      'step': instance.step,
      'content': instance.content,
    };

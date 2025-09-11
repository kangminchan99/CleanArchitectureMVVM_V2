import 'package:freezed_annotation/freezed_annotation.dart';

part 'chef_model.freezed.dart';

part 'chef_model.g.dart';

@freezed
abstract class ChefModel with _$ChefModel {
  const factory ChefModel({
    required int id,
    required String name,
    required String image,
    required String address,
  }) = _ChefModel;

  factory ChefModel.fromJson(Map<String, Object?> json) =>
      _$ChefModelFromJson(json);
}

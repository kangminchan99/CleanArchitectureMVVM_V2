// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChefModel _$ChefModelFromJson(Map<String, dynamic> json) => _ChefModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$ChefModelToJson(_ChefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'address': instance.address,
    };

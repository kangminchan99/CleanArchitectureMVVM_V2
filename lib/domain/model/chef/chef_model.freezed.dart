// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chef_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChefModel {

 int get id; String get name; String get image; String get address;
/// Create a copy of ChefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChefModelCopyWith<ChefModel> get copyWith => _$ChefModelCopyWithImpl<ChefModel>(this as ChefModel, _$identity);

  /// Serializes this ChefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChefModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,address);

@override
String toString() {
  return 'ChefModel(id: $id, name: $name, image: $image, address: $address)';
}


}

/// @nodoc
abstract mixin class $ChefModelCopyWith<$Res>  {
  factory $ChefModelCopyWith(ChefModel value, $Res Function(ChefModel) _then) = _$ChefModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, String address
});




}
/// @nodoc
class _$ChefModelCopyWithImpl<$Res>
    implements $ChefModelCopyWith<$Res> {
  _$ChefModelCopyWithImpl(this._self, this._then);

  final ChefModel _self;
  final $Res Function(ChefModel) _then;

/// Create a copy of ChefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? address = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChefModel].
extension ChefModelPatterns on ChefModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChefModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChefModel value)  $default,){
final _that = this;
switch (_that) {
case _ChefModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChefModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChefModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChefModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String address)  $default,) {final _that = this;
switch (_that) {
case _ChefModel():
return $default(_that.id,_that.name,_that.image,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  String address)?  $default,) {final _that = this;
switch (_that) {
case _ChefModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChefModel implements ChefModel {
  const _ChefModel({required this.id, required this.name, required this.image, required this.address});
  factory _ChefModel.fromJson(Map<String, dynamic> json) => _$ChefModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String image;
@override final  String address;

/// Create a copy of ChefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChefModelCopyWith<_ChefModel> get copyWith => __$ChefModelCopyWithImpl<_ChefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChefModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChefModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,address);

@override
String toString() {
  return 'ChefModel(id: $id, name: $name, image: $image, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ChefModelCopyWith<$Res> implements $ChefModelCopyWith<$Res> {
  factory _$ChefModelCopyWith(_ChefModel value, $Res Function(_ChefModel) _then) = __$ChefModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, String address
});




}
/// @nodoc
class __$ChefModelCopyWithImpl<$Res>
    implements _$ChefModelCopyWith<$Res> {
  __$ChefModelCopyWithImpl(this._self, this._then);

  final _ChefModel _self;
  final $Res Function(_ChefModel) _then;

/// Create a copy of ChefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? address = null,}) {
  return _then(_ChefModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

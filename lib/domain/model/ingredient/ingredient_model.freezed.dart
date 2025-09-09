// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientModel {

 int get id; String get name; String get image;
/// Create a copy of IngredientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientModelCopyWith<IngredientModel> get copyWith => _$IngredientModelCopyWithImpl<IngredientModel>(this as IngredientModel, _$identity);

  /// Serializes this IngredientModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'IngredientModel(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $IngredientModelCopyWith<$Res>  {
  factory $IngredientModelCopyWith(IngredientModel value, $Res Function(IngredientModel) _then) = _$IngredientModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class _$IngredientModelCopyWithImpl<$Res>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._self, this._then);

  final IngredientModel _self;
  final $Res Function(IngredientModel) _then;

/// Create a copy of IngredientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientModel].
extension IngredientModelPatterns on IngredientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientModel() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image)  $default,) {final _that = this;
switch (_that) {
case _IngredientModel():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image)?  $default,) {final _that = this;
switch (_that) {
case _IngredientModel() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientModel implements IngredientModel {
  const _IngredientModel({required this.id, required this.name, required this.image});
  factory _IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String image;

/// Create a copy of IngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientModelCopyWith<_IngredientModel> get copyWith => __$IngredientModelCopyWithImpl<_IngredientModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'IngredientModel(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$IngredientModelCopyWith<$Res> implements $IngredientModelCopyWith<$Res> {
  factory _$IngredientModelCopyWith(_IngredientModel value, $Res Function(_IngredientModel) _then) = __$IngredientModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class __$IngredientModelCopyWithImpl<$Res>
    implements _$IngredientModelCopyWith<$Res> {
  __$IngredientModelCopyWithImpl(this._self, this._then);

  final _IngredientModel _self;
  final $Res Function(_IngredientModel) _then;

/// Create a copy of IngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_IngredientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeIngredientModel {

 IngredientModel get ingredient; int get amount;
/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeIngredientModelCopyWith<RecipeIngredientModel> get copyWith => _$RecipeIngredientModelCopyWithImpl<RecipeIngredientModel>(this as RecipeIngredientModel, _$identity);

  /// Serializes this RecipeIngredientModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeIngredientModel&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredient,amount);

@override
String toString() {
  return 'RecipeIngredientModel(ingredient: $ingredient, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $RecipeIngredientModelCopyWith<$Res>  {
  factory $RecipeIngredientModelCopyWith(RecipeIngredientModel value, $Res Function(RecipeIngredientModel) _then) = _$RecipeIngredientModelCopyWithImpl;
@useResult
$Res call({
 IngredientModel ingredient, int amount
});


$IngredientModelCopyWith<$Res> get ingredient;

}
/// @nodoc
class _$RecipeIngredientModelCopyWithImpl<$Res>
    implements $RecipeIngredientModelCopyWith<$Res> {
  _$RecipeIngredientModelCopyWithImpl(this._self, this._then);

  final RecipeIngredientModel _self;
  final $Res Function(RecipeIngredientModel) _then;

/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredient = null,Object? amount = null,}) {
  return _then(_self.copyWith(
ingredient: null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as IngredientModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientModelCopyWith<$Res> get ingredient {
  
  return $IngredientModelCopyWith<$Res>(_self.ingredient, (value) {
    return _then(_self.copyWith(ingredient: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecipeIngredientModel].
extension RecipeIngredientModelPatterns on RecipeIngredientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeIngredientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeIngredientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeIngredientModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeIngredientModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IngredientModel ingredient,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeIngredientModel() when $default != null:
return $default(_that.ingredient,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IngredientModel ingredient,  int amount)  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredientModel():
return $default(_that.ingredient,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IngredientModel ingredient,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredientModel() when $default != null:
return $default(_that.ingredient,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeIngredientModel implements RecipeIngredientModel {
  const _RecipeIngredientModel({required this.ingredient, required this.amount});
  factory _RecipeIngredientModel.fromJson(Map<String, dynamic> json) => _$RecipeIngredientModelFromJson(json);

@override final  IngredientModel ingredient;
@override final  int amount;

/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeIngredientModelCopyWith<_RecipeIngredientModel> get copyWith => __$RecipeIngredientModelCopyWithImpl<_RecipeIngredientModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeIngredientModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeIngredientModel&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredient,amount);

@override
String toString() {
  return 'RecipeIngredientModel(ingredient: $ingredient, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$RecipeIngredientModelCopyWith<$Res> implements $RecipeIngredientModelCopyWith<$Res> {
  factory _$RecipeIngredientModelCopyWith(_RecipeIngredientModel value, $Res Function(_RecipeIngredientModel) _then) = __$RecipeIngredientModelCopyWithImpl;
@override @useResult
$Res call({
 IngredientModel ingredient, int amount
});


@override $IngredientModelCopyWith<$Res> get ingredient;

}
/// @nodoc
class __$RecipeIngredientModelCopyWithImpl<$Res>
    implements _$RecipeIngredientModelCopyWith<$Res> {
  __$RecipeIngredientModelCopyWithImpl(this._self, this._then);

  final _RecipeIngredientModel _self;
  final $Res Function(_RecipeIngredientModel) _then;

/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredient = null,Object? amount = null,}) {
  return _then(_RecipeIngredientModel(
ingredient: null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as IngredientModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of RecipeIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientModelCopyWith<$Res> get ingredient {
  
  return $IngredientModelCopyWith<$Res>(_self.ingredient, (value) {
    return _then(_self.copyWith(ingredient: value));
  });
}
}

// dart format on

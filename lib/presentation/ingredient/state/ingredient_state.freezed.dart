// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientState {

 RecipeModel? get recipe; List<IngredientModel> get ingredients; List<ProcedureModel> get procedures;
/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientStateCopyWith<IngredientState> get copyWith => _$IngredientStateCopyWithImpl<IngredientState>(this as IngredientState, _$identity);

  /// Serializes this IngredientState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientState&&(identical(other.recipe, recipe) || other.recipe == recipe)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.procedures, procedures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipe,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(procedures));

@override
String toString() {
  return 'IngredientState(recipe: $recipe, ingredients: $ingredients, procedures: $procedures)';
}


}

/// @nodoc
abstract mixin class $IngredientStateCopyWith<$Res>  {
  factory $IngredientStateCopyWith(IngredientState value, $Res Function(IngredientState) _then) = _$IngredientStateCopyWithImpl;
@useResult
$Res call({
 RecipeModel? recipe, List<IngredientModel> ingredients, List<ProcedureModel> procedures
});


$RecipeModelCopyWith<$Res>? get recipe;

}
/// @nodoc
class _$IngredientStateCopyWithImpl<$Res>
    implements $IngredientStateCopyWith<$Res> {
  _$IngredientStateCopyWithImpl(this._self, this._then);

  final IngredientState _self;
  final $Res Function(IngredientState) _then;

/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipe = freezed,Object? ingredients = null,Object? procedures = null,}) {
  return _then(_self.copyWith(
recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel?,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientModel>,procedures: null == procedures ? _self.procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<ProcedureModel>,
  ));
}
/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeModelCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}


/// Adds pattern-matching-related methods to [IngredientState].
extension IngredientStatePatterns on IngredientState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientState value)  $default,){
final _that = this;
switch (_that) {
case _IngredientState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientState value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeModel? recipe,  List<IngredientModel> ingredients,  List<ProcedureModel> procedures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientState() when $default != null:
return $default(_that.recipe,_that.ingredients,_that.procedures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeModel? recipe,  List<IngredientModel> ingredients,  List<ProcedureModel> procedures)  $default,) {final _that = this;
switch (_that) {
case _IngredientState():
return $default(_that.recipe,_that.ingredients,_that.procedures);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeModel? recipe,  List<IngredientModel> ingredients,  List<ProcedureModel> procedures)?  $default,) {final _that = this;
switch (_that) {
case _IngredientState() when $default != null:
return $default(_that.recipe,_that.ingredients,_that.procedures);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientState implements IngredientState {
  const _IngredientState({this.recipe, final  List<IngredientModel> ingredients = const [], final  List<ProcedureModel> procedures = const []}): _ingredients = ingredients,_procedures = procedures;
  factory _IngredientState.fromJson(Map<String, dynamic> json) => _$IngredientStateFromJson(json);

@override final  RecipeModel? recipe;
 final  List<IngredientModel> _ingredients;
@override@JsonKey() List<IngredientModel> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<ProcedureModel> _procedures;
@override@JsonKey() List<ProcedureModel> get procedures {
  if (_procedures is EqualUnmodifiableListView) return _procedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_procedures);
}


/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientStateCopyWith<_IngredientState> get copyWith => __$IngredientStateCopyWithImpl<_IngredientState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientState&&(identical(other.recipe, recipe) || other.recipe == recipe)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._procedures, _procedures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipe,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_procedures));

@override
String toString() {
  return 'IngredientState(recipe: $recipe, ingredients: $ingredients, procedures: $procedures)';
}


}

/// @nodoc
abstract mixin class _$IngredientStateCopyWith<$Res> implements $IngredientStateCopyWith<$Res> {
  factory _$IngredientStateCopyWith(_IngredientState value, $Res Function(_IngredientState) _then) = __$IngredientStateCopyWithImpl;
@override @useResult
$Res call({
 RecipeModel? recipe, List<IngredientModel> ingredients, List<ProcedureModel> procedures
});


@override $RecipeModelCopyWith<$Res>? get recipe;

}
/// @nodoc
class __$IngredientStateCopyWithImpl<$Res>
    implements _$IngredientStateCopyWith<$Res> {
  __$IngredientStateCopyWithImpl(this._self, this._then);

  final _IngredientState _self;
  final $Res Function(_IngredientState) _then;

/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipe = freezed,Object? ingredients = null,Object? procedures = null,}) {
  return _then(_IngredientState(
recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel?,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientModel>,procedures: null == procedures ? _self._procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<ProcedureModel>,
  ));
}

/// Create a copy of IngredientState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeModelCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

// dart format on

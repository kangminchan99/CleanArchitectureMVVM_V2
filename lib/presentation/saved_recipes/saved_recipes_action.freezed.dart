// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_recipes_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedRecipesAction {

 RecipeModel get recipe;
/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedRecipesActionCopyWith<SavedRecipesAction> get copyWith => _$SavedRecipesActionCopyWithImpl<SavedRecipesAction>(this as SavedRecipesAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedRecipesAction&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'SavedRecipesAction(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $SavedRecipesActionCopyWith<$Res>  {
  factory $SavedRecipesActionCopyWith(SavedRecipesAction value, $Res Function(SavedRecipesAction) _then) = _$SavedRecipesActionCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$SavedRecipesActionCopyWithImpl<$Res>
    implements $SavedRecipesActionCopyWith<$Res> {
  _$SavedRecipesActionCopyWithImpl(this._self, this._then);

  final SavedRecipesAction _self;
  final $Res Function(SavedRecipesAction) _then;

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipe = null,}) {
  return _then(_self.copyWith(
recipe: null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}
/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<$Res> get recipe {
  
  return $RecipeModelCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavedRecipesAction].
extension SavedRecipesActionPatterns on SavedRecipesAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnTapFavorite value)?  onTapFavorite,TResult Function( OnTapRecipe value)?  onTapRecipe,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapRecipe() when onTapRecipe != null:
return onTapRecipe(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnTapFavorite value)  onTapFavorite,required TResult Function( OnTapRecipe value)  onTapRecipe,}){
final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that);case OnTapRecipe():
return onTapRecipe(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnTapFavorite value)?  onTapFavorite,TResult? Function( OnTapRecipe value)?  onTapRecipe,}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapRecipe() when onTapRecipe != null:
return onTapRecipe(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RecipeModel recipe)?  onTapFavorite,TResult Function( RecipeModel recipe)?  onTapRecipe,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapRecipe() when onTapRecipe != null:
return onTapRecipe(_that.recipe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RecipeModel recipe)  onTapFavorite,required TResult Function( RecipeModel recipe)  onTapRecipe,}) {final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that.recipe);case OnTapRecipe():
return onTapRecipe(_that.recipe);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RecipeModel recipe)?  onTapFavorite,TResult? Function( RecipeModel recipe)?  onTapRecipe,}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapRecipe() when onTapRecipe != null:
return onTapRecipe(_that.recipe);case _:
  return null;

}
}

}

/// @nodoc


class OnTapFavorite implements SavedRecipesAction {
  const OnTapFavorite(this.recipe);
  

@override final  RecipeModel recipe;

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapFavoriteCopyWith<OnTapFavorite> get copyWith => _$OnTapFavoriteCopyWithImpl<OnTapFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapFavorite&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'SavedRecipesAction.onTapFavorite(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnTapFavoriteCopyWith<$Res> implements $SavedRecipesActionCopyWith<$Res> {
  factory $OnTapFavoriteCopyWith(OnTapFavorite value, $Res Function(OnTapFavorite) _then) = _$OnTapFavoriteCopyWithImpl;
@override @useResult
$Res call({
 RecipeModel recipe
});


@override $RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapFavoriteCopyWithImpl<$Res>
    implements $OnTapFavoriteCopyWith<$Res> {
  _$OnTapFavoriteCopyWithImpl(this._self, this._then);

  final OnTapFavorite _self;
  final $Res Function(OnTapFavorite) _then;

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnTapFavorite(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<$Res> get recipe {
  
  return $RecipeModelCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

/// @nodoc


class OnTapRecipe implements SavedRecipesAction {
  const OnTapRecipe(this.recipe);
  

@override final  RecipeModel recipe;

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapRecipeCopyWith<OnTapRecipe> get copyWith => _$OnTapRecipeCopyWithImpl<OnTapRecipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapRecipe&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'SavedRecipesAction.onTapRecipe(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnTapRecipeCopyWith<$Res> implements $SavedRecipesActionCopyWith<$Res> {
  factory $OnTapRecipeCopyWith(OnTapRecipe value, $Res Function(OnTapRecipe) _then) = _$OnTapRecipeCopyWithImpl;
@override @useResult
$Res call({
 RecipeModel recipe
});


@override $RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapRecipeCopyWithImpl<$Res>
    implements $OnTapRecipeCopyWith<$Res> {
  _$OnTapRecipeCopyWithImpl(this._self, this._then);

  final OnTapRecipe _self;
  final $Res Function(OnTapRecipe) _then;

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnTapRecipe(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}

/// Create a copy of SavedRecipesAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<$Res> get recipe {
  
  return $RecipeModelCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

// dart format on

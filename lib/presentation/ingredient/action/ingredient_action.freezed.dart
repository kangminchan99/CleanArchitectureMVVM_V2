// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientAction()';
}


}

/// @nodoc
class $IngredientActionCopyWith<$Res>  {
$IngredientActionCopyWith(IngredientAction _, $Res Function(IngredientAction) __);
}


/// Adds pattern-matching-related methods to [IngredientAction].
extension IngredientActionPatterns on IngredientAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnTapFavorite value)?  onTapFavorite,TResult Function( OnTapIngredient value)?  onTapIngredient,TResult Function( OnTapProcedure value)?  onTapProcedure,TResult Function( OnTapFollow value)?  onTapFollow,TResult Function( LoadRecipe value)?  loadRecipe,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient(_that);case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure(_that);case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnTapFavorite value)  onTapFavorite,required TResult Function( OnTapIngredient value)  onTapIngredient,required TResult Function( OnTapProcedure value)  onTapProcedure,required TResult Function( OnTapFollow value)  onTapFollow,required TResult Function( LoadRecipe value)  loadRecipe,}){
final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that);case OnTapIngredient():
return onTapIngredient(_that);case OnTapProcedure():
return onTapProcedure(_that);case OnTapFollow():
return onTapFollow(_that);case LoadRecipe():
return loadRecipe(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnTapFavorite value)?  onTapFavorite,TResult? Function( OnTapIngredient value)?  onTapIngredient,TResult? Function( OnTapProcedure value)?  onTapProcedure,TResult? Function( OnTapFollow value)?  onTapFollow,TResult? Function( LoadRecipe value)?  loadRecipe,}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient(_that);case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure(_that);case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RecipeModel recipe)?  onTapFavorite,TResult Function()?  onTapIngredient,TResult Function()?  onTapProcedure,TResult Function( RecipeModel recipe)?  onTapFollow,TResult Function( int recipeId)?  loadRecipe,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient();case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure();case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that.recipe);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that.recipeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RecipeModel recipe)  onTapFavorite,required TResult Function()  onTapIngredient,required TResult Function()  onTapProcedure,required TResult Function( RecipeModel recipe)  onTapFollow,required TResult Function( int recipeId)  loadRecipe,}) {final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that.recipe);case OnTapIngredient():
return onTapIngredient();case OnTapProcedure():
return onTapProcedure();case OnTapFollow():
return onTapFollow(_that.recipe);case LoadRecipe():
return loadRecipe(_that.recipeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RecipeModel recipe)?  onTapFavorite,TResult? Function()?  onTapIngredient,TResult? Function()?  onTapProcedure,TResult? Function( RecipeModel recipe)?  onTapFollow,TResult? Function( int recipeId)?  loadRecipe,}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient();case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure();case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that.recipe);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that.recipeId);case _:
  return null;

}
}

}

/// @nodoc


class OnTapFavorite implements IngredientAction {
  const OnTapFavorite(this.recipe);
  

 final  RecipeModel recipe;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'IngredientAction.onTapFavorite(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnTapFavoriteCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $OnTapFavoriteCopyWith(OnTapFavorite value, $Res Function(OnTapFavorite) _then) = _$OnTapFavoriteCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapFavoriteCopyWithImpl<$Res>
    implements $OnTapFavoriteCopyWith<$Res> {
  _$OnTapFavoriteCopyWithImpl(this._self, this._then);

  final OnTapFavorite _self;
  final $Res Function(OnTapFavorite) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnTapFavorite(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}

/// Create a copy of IngredientAction
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


class OnTapIngredient implements IngredientAction {
  const OnTapIngredient();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapIngredient);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientAction.onTapIngredient()';
}


}




/// @nodoc


class OnTapProcedure implements IngredientAction {
  const OnTapProcedure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapProcedure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientAction.onTapProcedure()';
}


}




/// @nodoc


class OnTapFollow implements IngredientAction {
  const OnTapFollow(this.recipe);
  

 final  RecipeModel recipe;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapFollowCopyWith<OnTapFollow> get copyWith => _$OnTapFollowCopyWithImpl<OnTapFollow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapFollow&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'IngredientAction.onTapFollow(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnTapFollowCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $OnTapFollowCopyWith(OnTapFollow value, $Res Function(OnTapFollow) _then) = _$OnTapFollowCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapFollowCopyWithImpl<$Res>
    implements $OnTapFollowCopyWith<$Res> {
  _$OnTapFollowCopyWithImpl(this._self, this._then);

  final OnTapFollow _self;
  final $Res Function(OnTapFollow) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnTapFollow(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}

/// Create a copy of IngredientAction
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


class LoadRecipe implements IngredientAction {
  const LoadRecipe(this.recipeId);
  

 final  int recipeId;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRecipeCopyWith<LoadRecipe> get copyWith => _$LoadRecipeCopyWithImpl<LoadRecipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRecipe&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId));
}


@override
int get hashCode => Object.hash(runtimeType,recipeId);

@override
String toString() {
  return 'IngredientAction.loadRecipe(recipeId: $recipeId)';
}


}

/// @nodoc
abstract mixin class $LoadRecipeCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $LoadRecipeCopyWith(LoadRecipe value, $Res Function(LoadRecipe) _then) = _$LoadRecipeCopyWithImpl;
@useResult
$Res call({
 int recipeId
});




}
/// @nodoc
class _$LoadRecipeCopyWithImpl<$Res>
    implements $LoadRecipeCopyWith<$Res> {
  _$LoadRecipeCopyWithImpl(this._self, this._then);

  final LoadRecipe _self;
  final $Res Function(LoadRecipe) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipeId = null,}) {
  return _then(LoadRecipe(
null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnTapFavorite value)?  onTapFavorite,TResult Function( OnTapIngredient value)?  onTapIngredient,TResult Function( OnTapProcedure value)?  onTapProcedure,TResult Function( OnTapFollow value)?  onTapFollow,TResult Function( LoadRecipe value)?  loadRecipe,TResult Function( OnTapShare value)?  onTapShare,TResult Function( OnTapRateRecipe value)?  onTapRateRecipe,TResult Function( OnTapUnsave value)?  onTapUnsave,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient(_that);case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure(_that);case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that);case OnTapShare() when onTapShare != null:
return onTapShare(_that);case OnTapRateRecipe() when onTapRateRecipe != null:
return onTapRateRecipe(_that);case OnTapUnsave() when onTapUnsave != null:
return onTapUnsave(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnTapFavorite value)  onTapFavorite,required TResult Function( OnTapIngredient value)  onTapIngredient,required TResult Function( OnTapProcedure value)  onTapProcedure,required TResult Function( OnTapFollow value)  onTapFollow,required TResult Function( LoadRecipe value)  loadRecipe,required TResult Function( OnTapShare value)  onTapShare,required TResult Function( OnTapRateRecipe value)  onTapRateRecipe,required TResult Function( OnTapUnsave value)  onTapUnsave,}){
final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that);case OnTapIngredient():
return onTapIngredient(_that);case OnTapProcedure():
return onTapProcedure(_that);case OnTapFollow():
return onTapFollow(_that);case LoadRecipe():
return loadRecipe(_that);case OnTapShare():
return onTapShare(_that);case OnTapRateRecipe():
return onTapRateRecipe(_that);case OnTapUnsave():
return onTapUnsave(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnTapFavorite value)?  onTapFavorite,TResult? Function( OnTapIngredient value)?  onTapIngredient,TResult? Function( OnTapProcedure value)?  onTapProcedure,TResult? Function( OnTapFollow value)?  onTapFollow,TResult? Function( LoadRecipe value)?  loadRecipe,TResult? Function( OnTapShare value)?  onTapShare,TResult? Function( OnTapRateRecipe value)?  onTapRateRecipe,TResult? Function( OnTapUnsave value)?  onTapUnsave,}){
final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient(_that);case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure(_that);case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that);case OnTapShare() when onTapShare != null:
return onTapShare(_that);case OnTapRateRecipe() when onTapRateRecipe != null:
return onTapRateRecipe(_that);case OnTapUnsave() when onTapUnsave != null:
return onTapUnsave(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RecipeModel recipe)?  onTapFavorite,TResult Function()?  onTapIngredient,TResult Function()?  onTapProcedure,TResult Function( RecipeModel recipe)?  onTapFollow,TResult Function( int recipeId)?  loadRecipe,TResult Function( String link)?  onTapShare,TResult Function( RecipeModel recipe,  int rate)?  onTapRateRecipe,TResult Function( RecipeModel recipe)?  onTapUnsave,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient();case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure();case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that.recipe);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that.recipeId);case OnTapShare() when onTapShare != null:
return onTapShare(_that.link);case OnTapRateRecipe() when onTapRateRecipe != null:
return onTapRateRecipe(_that.recipe,_that.rate);case OnTapUnsave() when onTapUnsave != null:
return onTapUnsave(_that.recipe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RecipeModel recipe)  onTapFavorite,required TResult Function()  onTapIngredient,required TResult Function()  onTapProcedure,required TResult Function( RecipeModel recipe)  onTapFollow,required TResult Function( int recipeId)  loadRecipe,required TResult Function( String link)  onTapShare,required TResult Function( RecipeModel recipe,  int rate)  onTapRateRecipe,required TResult Function( RecipeModel recipe)  onTapUnsave,}) {final _that = this;
switch (_that) {
case OnTapFavorite():
return onTapFavorite(_that.recipe);case OnTapIngredient():
return onTapIngredient();case OnTapProcedure():
return onTapProcedure();case OnTapFollow():
return onTapFollow(_that.recipe);case LoadRecipe():
return loadRecipe(_that.recipeId);case OnTapShare():
return onTapShare(_that.link);case OnTapRateRecipe():
return onTapRateRecipe(_that.recipe,_that.rate);case OnTapUnsave():
return onTapUnsave(_that.recipe);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RecipeModel recipe)?  onTapFavorite,TResult? Function()?  onTapIngredient,TResult? Function()?  onTapProcedure,TResult? Function( RecipeModel recipe)?  onTapFollow,TResult? Function( int recipeId)?  loadRecipe,TResult? Function( String link)?  onTapShare,TResult? Function( RecipeModel recipe,  int rate)?  onTapRateRecipe,TResult? Function( RecipeModel recipe)?  onTapUnsave,}) {final _that = this;
switch (_that) {
case OnTapFavorite() when onTapFavorite != null:
return onTapFavorite(_that.recipe);case OnTapIngredient() when onTapIngredient != null:
return onTapIngredient();case OnTapProcedure() when onTapProcedure != null:
return onTapProcedure();case OnTapFollow() when onTapFollow != null:
return onTapFollow(_that.recipe);case LoadRecipe() when loadRecipe != null:
return loadRecipe(_that.recipeId);case OnTapShare() when onTapShare != null:
return onTapShare(_that.link);case OnTapRateRecipe() when onTapRateRecipe != null:
return onTapRateRecipe(_that.recipe,_that.rate);case OnTapUnsave() when onTapUnsave != null:
return onTapUnsave(_that.recipe);case _:
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

/// @nodoc


class OnTapShare implements IngredientAction {
  const OnTapShare(this.link);
  

 final  String link;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapShareCopyWith<OnTapShare> get copyWith => _$OnTapShareCopyWithImpl<OnTapShare>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapShare&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,link);

@override
String toString() {
  return 'IngredientAction.onTapShare(link: $link)';
}


}

/// @nodoc
abstract mixin class $OnTapShareCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $OnTapShareCopyWith(OnTapShare value, $Res Function(OnTapShare) _then) = _$OnTapShareCopyWithImpl;
@useResult
$Res call({
 String link
});




}
/// @nodoc
class _$OnTapShareCopyWithImpl<$Res>
    implements $OnTapShareCopyWith<$Res> {
  _$OnTapShareCopyWithImpl(this._self, this._then);

  final OnTapShare _self;
  final $Res Function(OnTapShare) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? link = null,}) {
  return _then(OnTapShare(
null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnTapRateRecipe implements IngredientAction {
  const OnTapRateRecipe(this.recipe, this.rate);
  

 final  RecipeModel recipe;
 final  int rate;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapRateRecipeCopyWith<OnTapRateRecipe> get copyWith => _$OnTapRateRecipeCopyWithImpl<OnTapRateRecipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapRateRecipe&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,recipe,rate);

@override
String toString() {
  return 'IngredientAction.onTapRateRecipe(recipe: $recipe, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $OnTapRateRecipeCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $OnTapRateRecipeCopyWith(OnTapRateRecipe value, $Res Function(OnTapRateRecipe) _then) = _$OnTapRateRecipeCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe, int rate
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapRateRecipeCopyWithImpl<$Res>
    implements $OnTapRateRecipeCopyWith<$Res> {
  _$OnTapRateRecipeCopyWithImpl(this._self, this._then);

  final OnTapRateRecipe _self;
  final $Res Function(OnTapRateRecipe) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,Object? rate = null,}) {
  return _then(OnTapRateRecipe(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,
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


class OnTapUnsave implements IngredientAction {
  const OnTapUnsave(this.recipe);
  

 final  RecipeModel recipe;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapUnsaveCopyWith<OnTapUnsave> get copyWith => _$OnTapUnsaveCopyWithImpl<OnTapUnsave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapUnsave&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'IngredientAction.onTapUnsave(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnTapUnsaveCopyWith<$Res> implements $IngredientActionCopyWith<$Res> {
  factory $OnTapUnsaveCopyWith(OnTapUnsave value, $Res Function(OnTapUnsave) _then) = _$OnTapUnsaveCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnTapUnsaveCopyWithImpl<$Res>
    implements $OnTapUnsaveCopyWith<$Res> {
  _$OnTapUnsaveCopyWithImpl(this._self, this._then);

  final OnTapUnsave _self;
  final $Res Function(OnTapUnsave) _then;

/// Create a copy of IngredientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnTapUnsave(
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

// dart format on

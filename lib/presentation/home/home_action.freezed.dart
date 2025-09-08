// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeAction()';
}


}

/// @nodoc
class $HomeActionCopyWith<$Res>  {
$HomeActionCopyWith(HomeAction _, $Res Function(HomeAction) __);
}


/// Adds pattern-matching-related methods to [HomeAction].
extension HomeActionPatterns on HomeAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnSearchTapped value)?  searchTapped,TResult Function( OnSelectCategory value)?  selectCategory,TResult Function( OnFavoriteTapped value)?  favoriteTapped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnSearchTapped() when searchTapped != null:
return searchTapped(_that);case OnSelectCategory() when selectCategory != null:
return selectCategory(_that);case OnFavoriteTapped() when favoriteTapped != null:
return favoriteTapped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnSearchTapped value)  searchTapped,required TResult Function( OnSelectCategory value)  selectCategory,required TResult Function( OnFavoriteTapped value)  favoriteTapped,}){
final _that = this;
switch (_that) {
case OnSearchTapped():
return searchTapped(_that);case OnSelectCategory():
return selectCategory(_that);case OnFavoriteTapped():
return favoriteTapped(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnSearchTapped value)?  searchTapped,TResult? Function( OnSelectCategory value)?  selectCategory,TResult? Function( OnFavoriteTapped value)?  favoriteTapped,}){
final _that = this;
switch (_that) {
case OnSearchTapped() when searchTapped != null:
return searchTapped(_that);case OnSelectCategory() when selectCategory != null:
return selectCategory(_that);case OnFavoriteTapped() when favoriteTapped != null:
return favoriteTapped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  searchTapped,TResult Function( String category)?  selectCategory,TResult Function( RecipeModel recipe)?  favoriteTapped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnSearchTapped() when searchTapped != null:
return searchTapped();case OnSelectCategory() when selectCategory != null:
return selectCategory(_that.category);case OnFavoriteTapped() when favoriteTapped != null:
return favoriteTapped(_that.recipe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  searchTapped,required TResult Function( String category)  selectCategory,required TResult Function( RecipeModel recipe)  favoriteTapped,}) {final _that = this;
switch (_that) {
case OnSearchTapped():
return searchTapped();case OnSelectCategory():
return selectCategory(_that.category);case OnFavoriteTapped():
return favoriteTapped(_that.recipe);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  searchTapped,TResult? Function( String category)?  selectCategory,TResult? Function( RecipeModel recipe)?  favoriteTapped,}) {final _that = this;
switch (_that) {
case OnSearchTapped() when searchTapped != null:
return searchTapped();case OnSelectCategory() when selectCategory != null:
return selectCategory(_that.category);case OnFavoriteTapped() when favoriteTapped != null:
return favoriteTapped(_that.recipe);case _:
  return null;

}
}

}

/// @nodoc


class OnSearchTapped implements HomeAction {
  const OnSearchTapped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSearchTapped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeAction.searchTapped()';
}


}




/// @nodoc


class OnSelectCategory implements HomeAction {
  const OnSelectCategory(this.category);
  

 final  String category;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnSelectCategoryCopyWith<OnSelectCategory> get copyWith => _$OnSelectCategoryCopyWithImpl<OnSelectCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSelectCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'HomeAction.selectCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $OnSelectCategoryCopyWith<$Res> implements $HomeActionCopyWith<$Res> {
  factory $OnSelectCategoryCopyWith(OnSelectCategory value, $Res Function(OnSelectCategory) _then) = _$OnSelectCategoryCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$OnSelectCategoryCopyWithImpl<$Res>
    implements $OnSelectCategoryCopyWith<$Res> {
  _$OnSelectCategoryCopyWithImpl(this._self, this._then);

  final OnSelectCategory _self;
  final $Res Function(OnSelectCategory) _then;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(OnSelectCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnFavoriteTapped implements HomeAction {
  const OnFavoriteTapped(this.recipe);
  

 final  RecipeModel recipe;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnFavoriteTappedCopyWith<OnFavoriteTapped> get copyWith => _$OnFavoriteTappedCopyWithImpl<OnFavoriteTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnFavoriteTapped&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'HomeAction.favoriteTapped(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $OnFavoriteTappedCopyWith<$Res> implements $HomeActionCopyWith<$Res> {
  factory $OnFavoriteTappedCopyWith(OnFavoriteTapped value, $Res Function(OnFavoriteTapped) _then) = _$OnFavoriteTappedCopyWithImpl;
@useResult
$Res call({
 RecipeModel recipe
});


$RecipeModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$OnFavoriteTappedCopyWithImpl<$Res>
    implements $OnFavoriteTappedCopyWith<$Res> {
  _$OnFavoriteTappedCopyWithImpl(this._self, this._then);

  final OnFavoriteTapped _self;
  final $Res Function(OnFavoriteTapped) _then;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(OnFavoriteTapped(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeModel,
  ));
}

/// Create a copy of HomeAction
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

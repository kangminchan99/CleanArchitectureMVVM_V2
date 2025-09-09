// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcedureModel {

 int get recipeId; int get step; String get content;
/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureModelCopyWith<ProcedureModel> get copyWith => _$ProcedureModelCopyWithImpl<ProcedureModel>(this as ProcedureModel, _$identity);

  /// Serializes this ProcedureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureModel&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.step, step) || other.step == step)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipeId,step,content);

@override
String toString() {
  return 'ProcedureModel(recipeId: $recipeId, step: $step, content: $content)';
}


}

/// @nodoc
abstract mixin class $ProcedureModelCopyWith<$Res>  {
  factory $ProcedureModelCopyWith(ProcedureModel value, $Res Function(ProcedureModel) _then) = _$ProcedureModelCopyWithImpl;
@useResult
$Res call({
 int recipeId, int step, String content
});




}
/// @nodoc
class _$ProcedureModelCopyWithImpl<$Res>
    implements $ProcedureModelCopyWith<$Res> {
  _$ProcedureModelCopyWithImpl(this._self, this._then);

  final ProcedureModel _self;
  final $Res Function(ProcedureModel) _then;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipeId = null,Object? step = null,Object? content = null,}) {
  return _then(_self.copyWith(
recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as int,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureModel].
extension ProcedureModelPatterns on ProcedureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureModel value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int recipeId,  int step,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
return $default(_that.recipeId,_that.step,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int recipeId,  int step,  String content)  $default,) {final _that = this;
switch (_that) {
case _ProcedureModel():
return $default(_that.recipeId,_that.step,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int recipeId,  int step,  String content)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
return $default(_that.recipeId,_that.step,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProcedureModel implements ProcedureModel {
  const _ProcedureModel({required this.recipeId, required this.step, required this.content});
  factory _ProcedureModel.fromJson(Map<String, dynamic> json) => _$ProcedureModelFromJson(json);

@override final  int recipeId;
@override final  int step;
@override final  String content;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureModelCopyWith<_ProcedureModel> get copyWith => __$ProcedureModelCopyWithImpl<_ProcedureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProcedureModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureModel&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.step, step) || other.step == step)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipeId,step,content);

@override
String toString() {
  return 'ProcedureModel(recipeId: $recipeId, step: $step, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ProcedureModelCopyWith<$Res> implements $ProcedureModelCopyWith<$Res> {
  factory _$ProcedureModelCopyWith(_ProcedureModel value, $Res Function(_ProcedureModel) _then) = __$ProcedureModelCopyWithImpl;
@override @useResult
$Res call({
 int recipeId, int step, String content
});




}
/// @nodoc
class __$ProcedureModelCopyWithImpl<$Res>
    implements _$ProcedureModelCopyWith<$Res> {
  __$ProcedureModelCopyWithImpl(this._self, this._then);

  final _ProcedureModel _self;
  final $Res Function(_ProcedureModel) _then;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipeId = null,Object? step = null,Object? content = null,}) {
  return _then(_ProcedureModel(
recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as int,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

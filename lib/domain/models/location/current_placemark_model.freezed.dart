// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_placemark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentPlacemarkModel {

 Placemark get placemark; String get fullAddress;
/// Create a copy of CurrentPlacemarkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentPlacemarkModelCopyWith<CurrentPlacemarkModel> get copyWith => _$CurrentPlacemarkModelCopyWithImpl<CurrentPlacemarkModel>(this as CurrentPlacemarkModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentPlacemarkModel&&(identical(other.placemark, placemark) || other.placemark == placemark)&&(identical(other.fullAddress, fullAddress) || other.fullAddress == fullAddress));
}


@override
int get hashCode => Object.hash(runtimeType,placemark,fullAddress);

@override
String toString() {
  return 'CurrentPlacemarkModel(placemark: $placemark, fullAddress: $fullAddress)';
}


}

/// @nodoc
abstract mixin class $CurrentPlacemarkModelCopyWith<$Res>  {
  factory $CurrentPlacemarkModelCopyWith(CurrentPlacemarkModel value, $Res Function(CurrentPlacemarkModel) _then) = _$CurrentPlacemarkModelCopyWithImpl;
@useResult
$Res call({
 Placemark placemark, String fullAddress
});




}
/// @nodoc
class _$CurrentPlacemarkModelCopyWithImpl<$Res>
    implements $CurrentPlacemarkModelCopyWith<$Res> {
  _$CurrentPlacemarkModelCopyWithImpl(this._self, this._then);

  final CurrentPlacemarkModel _self;
  final $Res Function(CurrentPlacemarkModel) _then;

/// Create a copy of CurrentPlacemarkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? placemark = null,Object? fullAddress = null,}) {
  return _then(_self.copyWith(
placemark: null == placemark ? _self.placemark : placemark // ignore: cast_nullable_to_non_nullable
as Placemark,fullAddress: null == fullAddress ? _self.fullAddress : fullAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentPlacemarkModel].
extension CurrentPlacemarkModelPatterns on CurrentPlacemarkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentPlacemarkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentPlacemarkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentPlacemarkModel value)  $default,){
final _that = this;
switch (_that) {
case _CurrentPlacemarkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentPlacemarkModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentPlacemarkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Placemark placemark,  String fullAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentPlacemarkModel() when $default != null:
return $default(_that.placemark,_that.fullAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Placemark placemark,  String fullAddress)  $default,) {final _that = this;
switch (_that) {
case _CurrentPlacemarkModel():
return $default(_that.placemark,_that.fullAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Placemark placemark,  String fullAddress)?  $default,) {final _that = this;
switch (_that) {
case _CurrentPlacemarkModel() when $default != null:
return $default(_that.placemark,_that.fullAddress);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentPlacemarkModel implements CurrentPlacemarkModel {
  const _CurrentPlacemarkModel({required this.placemark, required this.fullAddress});
  

@override final  Placemark placemark;
@override final  String fullAddress;

/// Create a copy of CurrentPlacemarkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentPlacemarkModelCopyWith<_CurrentPlacemarkModel> get copyWith => __$CurrentPlacemarkModelCopyWithImpl<_CurrentPlacemarkModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentPlacemarkModel&&(identical(other.placemark, placemark) || other.placemark == placemark)&&(identical(other.fullAddress, fullAddress) || other.fullAddress == fullAddress));
}


@override
int get hashCode => Object.hash(runtimeType,placemark,fullAddress);

@override
String toString() {
  return 'CurrentPlacemarkModel(placemark: $placemark, fullAddress: $fullAddress)';
}


}

/// @nodoc
abstract mixin class _$CurrentPlacemarkModelCopyWith<$Res> implements $CurrentPlacemarkModelCopyWith<$Res> {
  factory _$CurrentPlacemarkModelCopyWith(_CurrentPlacemarkModel value, $Res Function(_CurrentPlacemarkModel) _then) = __$CurrentPlacemarkModelCopyWithImpl;
@override @useResult
$Res call({
 Placemark placemark, String fullAddress
});




}
/// @nodoc
class __$CurrentPlacemarkModelCopyWithImpl<$Res>
    implements _$CurrentPlacemarkModelCopyWith<$Res> {
  __$CurrentPlacemarkModelCopyWithImpl(this._self, this._then);

  final _CurrentPlacemarkModel _self;
  final $Res Function(_CurrentPlacemarkModel) _then;

/// Create a copy of CurrentPlacemarkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? placemark = null,Object? fullAddress = null,}) {
  return _then(_CurrentPlacemarkModel(
placemark: null == placemark ? _self.placemark : placemark // ignore: cast_nullable_to_non_nullable
as Placemark,fullAddress: null == fullAddress ? _self.fullAddress : fullAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

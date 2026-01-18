// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderFilterModel {

 DateTime? get date; ReminderType? get type; ReminderStatus? get status;
/// Create a copy of ReminderFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderFilterModelCopyWith<ReminderFilterModel> get copyWith => _$ReminderFilterModelCopyWithImpl<ReminderFilterModel>(this as ReminderFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderFilterModel&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,date,type,status);

@override
String toString() {
  return 'ReminderFilterModel(date: $date, type: $type, status: $status)';
}


}

/// @nodoc
abstract mixin class $ReminderFilterModelCopyWith<$Res>  {
  factory $ReminderFilterModelCopyWith(ReminderFilterModel value, $Res Function(ReminderFilterModel) _then) = _$ReminderFilterModelCopyWithImpl;
@useResult
$Res call({
 DateTime? date, ReminderType? type, ReminderStatus? status
});




}
/// @nodoc
class _$ReminderFilterModelCopyWithImpl<$Res>
    implements $ReminderFilterModelCopyWith<$Res> {
  _$ReminderFilterModelCopyWithImpl(this._self, this._then);

  final ReminderFilterModel _self;
  final $Res Function(ReminderFilterModel) _then;

/// Create a copy of ReminderFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? type = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReminderType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReminderStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderFilterModel].
extension ReminderFilterModelPatterns on ReminderFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _ReminderFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date,  ReminderType? type,  ReminderStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderFilterModel() when $default != null:
return $default(_that.date,_that.type,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date,  ReminderType? type,  ReminderStatus? status)  $default,) {final _that = this;
switch (_that) {
case _ReminderFilterModel():
return $default(_that.date,_that.type,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date,  ReminderType? type,  ReminderStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _ReminderFilterModel() when $default != null:
return $default(_that.date,_that.type,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderFilterModel implements ReminderFilterModel {
  const _ReminderFilterModel({this.date, this.type, this.status});
  

@override final  DateTime? date;
@override final  ReminderType? type;
@override final  ReminderStatus? status;

/// Create a copy of ReminderFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderFilterModelCopyWith<_ReminderFilterModel> get copyWith => __$ReminderFilterModelCopyWithImpl<_ReminderFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderFilterModel&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,date,type,status);

@override
String toString() {
  return 'ReminderFilterModel(date: $date, type: $type, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ReminderFilterModelCopyWith<$Res> implements $ReminderFilterModelCopyWith<$Res> {
  factory _$ReminderFilterModelCopyWith(_ReminderFilterModel value, $Res Function(_ReminderFilterModel) _then) = __$ReminderFilterModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date, ReminderType? type, ReminderStatus? status
});




}
/// @nodoc
class __$ReminderFilterModelCopyWithImpl<$Res>
    implements _$ReminderFilterModelCopyWith<$Res> {
  __$ReminderFilterModelCopyWithImpl(this._self, this._then);

  final _ReminderFilterModel _self;
  final $Res Function(_ReminderFilterModel) _then;

/// Create a copy of ReminderFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? type = freezed,Object? status = freezed,}) {
  return _then(_ReminderFilterModel(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReminderType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReminderStatus?,
  ));
}


}

// dart format on

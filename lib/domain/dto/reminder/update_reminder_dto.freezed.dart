// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_reminder_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateReminderDTO {

 String? get title; String? get description; DateTime? get startAt; String? get place; double? get latitude; double? get longitude; DateTime? get endAt;
/// Create a copy of UpdateReminderDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateReminderDTOCopyWith<UpdateReminderDTO> get copyWith => _$UpdateReminderDTOCopyWithImpl<UpdateReminderDTO>(this as UpdateReminderDTO, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReminderDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,startAt,place,latitude,longitude,endAt);

@override
String toString() {
  return 'UpdateReminderDTO(title: $title, description: $description, startAt: $startAt, place: $place, latitude: $latitude, longitude: $longitude, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class $UpdateReminderDTOCopyWith<$Res>  {
  factory $UpdateReminderDTOCopyWith(UpdateReminderDTO value, $Res Function(UpdateReminderDTO) _then) = _$UpdateReminderDTOCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, DateTime? startAt, String? place, double? latitude, double? longitude, DateTime? endAt
});




}
/// @nodoc
class _$UpdateReminderDTOCopyWithImpl<$Res>
    implements $UpdateReminderDTOCopyWith<$Res> {
  _$UpdateReminderDTOCopyWithImpl(this._self, this._then);

  final UpdateReminderDTO _self;
  final $Res Function(UpdateReminderDTO) _then;

/// Create a copy of UpdateReminderDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? startAt = freezed,Object? place = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? endAt = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateReminderDTO].
extension UpdateReminderDTOPatterns on UpdateReminderDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateReminderDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateReminderDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateReminderDTO value)  $default,){
final _that = this;
switch (_that) {
case _UpdateReminderDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateReminderDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateReminderDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? startAt,  String? place,  double? latitude,  double? longitude,  DateTime? endAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateReminderDTO() when $default != null:
return $default(_that.title,_that.description,_that.startAt,_that.place,_that.latitude,_that.longitude,_that.endAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? startAt,  String? place,  double? latitude,  double? longitude,  DateTime? endAt)  $default,) {final _that = this;
switch (_that) {
case _UpdateReminderDTO():
return $default(_that.title,_that.description,_that.startAt,_that.place,_that.latitude,_that.longitude,_that.endAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  DateTime? startAt,  String? place,  double? latitude,  double? longitude,  DateTime? endAt)?  $default,) {final _that = this;
switch (_that) {
case _UpdateReminderDTO() when $default != null:
return $default(_that.title,_that.description,_that.startAt,_that.place,_that.latitude,_that.longitude,_that.endAt);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateReminderDTO implements UpdateReminderDTO {
  const _UpdateReminderDTO({this.title, this.description, this.startAt, this.place, this.latitude, this.longitude, this.endAt});
  

@override final  String? title;
@override final  String? description;
@override final  DateTime? startAt;
@override final  String? place;
@override final  double? latitude;
@override final  double? longitude;
@override final  DateTime? endAt;

/// Create a copy of UpdateReminderDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateReminderDTOCopyWith<_UpdateReminderDTO> get copyWith => __$UpdateReminderDTOCopyWithImpl<_UpdateReminderDTO>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReminderDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,startAt,place,latitude,longitude,endAt);

@override
String toString() {
  return 'UpdateReminderDTO(title: $title, description: $description, startAt: $startAt, place: $place, latitude: $latitude, longitude: $longitude, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class _$UpdateReminderDTOCopyWith<$Res> implements $UpdateReminderDTOCopyWith<$Res> {
  factory _$UpdateReminderDTOCopyWith(_UpdateReminderDTO value, $Res Function(_UpdateReminderDTO) _then) = __$UpdateReminderDTOCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, DateTime? startAt, String? place, double? latitude, double? longitude, DateTime? endAt
});




}
/// @nodoc
class __$UpdateReminderDTOCopyWithImpl<$Res>
    implements _$UpdateReminderDTOCopyWith<$Res> {
  __$UpdateReminderDTOCopyWithImpl(this._self, this._then);

  final _UpdateReminderDTO _self;
  final $Res Function(_UpdateReminderDTO) _then;

/// Create a copy of UpdateReminderDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? startAt = freezed,Object? place = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? endAt = freezed,}) {
  return _then(_UpdateReminderDTO(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

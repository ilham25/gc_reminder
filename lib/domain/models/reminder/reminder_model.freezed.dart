// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReminderModel {

 int get id; String get title; String? get description; DateTime get startAt; DateTime? get endAt; DateTime get createdAt; String? get place; double? get lat; double? get lng; ReminderType get type; DateTime? get doneAt;
/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderModelCopyWith<ReminderModel> get copyWith => _$ReminderModelCopyWithImpl<ReminderModel>(this as ReminderModel, _$identity);

  /// Serializes this ReminderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.type, type) || other.type == type)&&(identical(other.doneAt, doneAt) || other.doneAt == doneAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,startAt,endAt,createdAt,place,lat,lng,type,doneAt);

@override
String toString() {
  return 'ReminderModel(id: $id, title: $title, description: $description, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, place: $place, lat: $lat, lng: $lng, type: $type, doneAt: $doneAt)';
}


}

/// @nodoc
abstract mixin class $ReminderModelCopyWith<$Res>  {
  factory $ReminderModelCopyWith(ReminderModel value, $Res Function(ReminderModel) _then) = _$ReminderModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? description, DateTime startAt, DateTime? endAt, DateTime createdAt, String? place, double? lat, double? lng, ReminderType type, DateTime? doneAt
});




}
/// @nodoc
class _$ReminderModelCopyWithImpl<$Res>
    implements $ReminderModelCopyWith<$Res> {
  _$ReminderModelCopyWithImpl(this._self, this._then);

  final ReminderModel _self;
  final $Res Function(ReminderModel) _then;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? startAt = null,Object? endAt = freezed,Object? createdAt = null,Object? place = freezed,Object? lat = freezed,Object? lng = freezed,Object? type = null,Object? doneAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReminderType,doneAt: freezed == doneAt ? _self.doneAt : doneAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderModel].
extension ReminderModelPatterns on ReminderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderModel value)  $default,){
final _that = this;
switch (_that) {
case _ReminderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? description,  DateTime startAt,  DateTime? endAt,  DateTime createdAt,  String? place,  double? lat,  double? lng,  ReminderType type,  DateTime? doneAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startAt,_that.endAt,_that.createdAt,_that.place,_that.lat,_that.lng,_that.type,_that.doneAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? description,  DateTime startAt,  DateTime? endAt,  DateTime createdAt,  String? place,  double? lat,  double? lng,  ReminderType type,  DateTime? doneAt)  $default,) {final _that = this;
switch (_that) {
case _ReminderModel():
return $default(_that.id,_that.title,_that.description,_that.startAt,_that.endAt,_that.createdAt,_that.place,_that.lat,_that.lng,_that.type,_that.doneAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? description,  DateTime startAt,  DateTime? endAt,  DateTime createdAt,  String? place,  double? lat,  double? lng,  ReminderType type,  DateTime? doneAt)?  $default,) {final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startAt,_that.endAt,_that.createdAt,_that.place,_that.lat,_that.lng,_that.type,_that.doneAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReminderModel implements ReminderModel {
  const _ReminderModel({this.id = 0, this.title = "", this.description, required this.startAt, this.endAt, required this.createdAt, this.place, this.lat, this.lng, required this.type, this.doneAt});
  factory _ReminderModel.fromJson(Map<String, dynamic> json) => _$ReminderModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override final  String? description;
@override final  DateTime startAt;
@override final  DateTime? endAt;
@override final  DateTime createdAt;
@override final  String? place;
@override final  double? lat;
@override final  double? lng;
@override final  ReminderType type;
@override final  DateTime? doneAt;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderModelCopyWith<_ReminderModel> get copyWith => __$ReminderModelCopyWithImpl<_ReminderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReminderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.type, type) || other.type == type)&&(identical(other.doneAt, doneAt) || other.doneAt == doneAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,startAt,endAt,createdAt,place,lat,lng,type,doneAt);

@override
String toString() {
  return 'ReminderModel(id: $id, title: $title, description: $description, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, place: $place, lat: $lat, lng: $lng, type: $type, doneAt: $doneAt)';
}


}

/// @nodoc
abstract mixin class _$ReminderModelCopyWith<$Res> implements $ReminderModelCopyWith<$Res> {
  factory _$ReminderModelCopyWith(_ReminderModel value, $Res Function(_ReminderModel) _then) = __$ReminderModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? description, DateTime startAt, DateTime? endAt, DateTime createdAt, String? place, double? lat, double? lng, ReminderType type, DateTime? doneAt
});




}
/// @nodoc
class __$ReminderModelCopyWithImpl<$Res>
    implements _$ReminderModelCopyWith<$Res> {
  __$ReminderModelCopyWithImpl(this._self, this._then);

  final _ReminderModel _self;
  final $Res Function(_ReminderModel) _then;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? startAt = null,Object? endAt = freezed,Object? createdAt = null,Object? place = freezed,Object? lat = freezed,Object? lng = freezed,Object? type = null,Object? doneAt = freezed,}) {
  return _then(_ReminderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReminderType,doneAt: freezed == doneAt ? _self.doneAt : doneAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

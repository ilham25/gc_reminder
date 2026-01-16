// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderUpdateBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderUpdateBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderUpdateBlocState()';
}


}

/// @nodoc
class $ReminderUpdateBlocStateCopyWith<$Res>  {
$ReminderUpdateBlocStateCopyWith(ReminderUpdateBlocState _, $Res Function(ReminderUpdateBlocState) __);
}


/// Adds pattern-matching-related methods to [ReminderUpdateBlocState].
extension ReminderUpdateBlocStatePatterns on ReminderUpdateBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderUpdateBlocStateInitialState value)?  initial,TResult Function( _GetReminderUpdateBlocStateLoadingState value)?  loading,TResult Function( _GetReminderUpdateBlocStateErrorState value)?  error,TResult Function( _GetReminderUpdateBlocStateLoadedState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderUpdateBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderUpdateBlocStateErrorState() when error != null:
return error(_that);case _GetReminderUpdateBlocStateLoadedState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderUpdateBlocStateInitialState value)  initial,required TResult Function( _GetReminderUpdateBlocStateLoadingState value)  loading,required TResult Function( _GetReminderUpdateBlocStateErrorState value)  error,required TResult Function( _GetReminderUpdateBlocStateLoadedState value)  success,}){
final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState():
return initial(_that);case _GetReminderUpdateBlocStateLoadingState():
return loading(_that);case _GetReminderUpdateBlocStateErrorState():
return error(_that);case _GetReminderUpdateBlocStateLoadedState():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderUpdateBlocStateInitialState value)?  initial,TResult? Function( _GetReminderUpdateBlocStateLoadingState value)?  loading,TResult? Function( _GetReminderUpdateBlocStateErrorState value)?  error,TResult? Function( _GetReminderUpdateBlocStateLoadedState value)?  success,}){
final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderUpdateBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderUpdateBlocStateErrorState() when error != null:
return error(_that);case _GetReminderUpdateBlocStateLoadedState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState() when initial != null:
return initial();case _GetReminderUpdateBlocStateLoadingState() when loading != null:
return loading();case _GetReminderUpdateBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderUpdateBlocStateLoadedState() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState():
return initial();case _GetReminderUpdateBlocStateLoadingState():
return loading();case _GetReminderUpdateBlocStateErrorState():
return error(_that.message);case _GetReminderUpdateBlocStateLoadedState():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _ReminderUpdateBlocStateInitialState() when initial != null:
return initial();case _GetReminderUpdateBlocStateLoadingState() when loading != null:
return loading();case _GetReminderUpdateBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderUpdateBlocStateLoadedState() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _ReminderUpdateBlocStateInitialState implements ReminderUpdateBlocState {
  const _ReminderUpdateBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderUpdateBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderUpdateBlocState.initial()';
}


}




/// @nodoc


class _GetReminderUpdateBlocStateLoadingState implements ReminderUpdateBlocState {
  const _GetReminderUpdateBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderUpdateBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderUpdateBlocState.loading()';
}


}




/// @nodoc


class _GetReminderUpdateBlocStateErrorState implements ReminderUpdateBlocState {
  const _GetReminderUpdateBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderUpdateBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderUpdateBlocStateErrorStateCopyWith<_GetReminderUpdateBlocStateErrorState> get copyWith => __$GetReminderUpdateBlocStateErrorStateCopyWithImpl<_GetReminderUpdateBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderUpdateBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderUpdateBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderUpdateBlocStateErrorStateCopyWith<$Res> implements $ReminderUpdateBlocStateCopyWith<$Res> {
  factory _$GetReminderUpdateBlocStateErrorStateCopyWith(_GetReminderUpdateBlocStateErrorState value, $Res Function(_GetReminderUpdateBlocStateErrorState) _then) = __$GetReminderUpdateBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderUpdateBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetReminderUpdateBlocStateErrorStateCopyWith<$Res> {
  __$GetReminderUpdateBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderUpdateBlocStateErrorState _self;
  final $Res Function(_GetReminderUpdateBlocStateErrorState) _then;

/// Create a copy of ReminderUpdateBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderUpdateBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderUpdateBlocStateLoadedState implements ReminderUpdateBlocState {
  const _GetReminderUpdateBlocStateLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderUpdateBlocStateLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderUpdateBlocState.success()';
}


}




// dart format on

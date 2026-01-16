// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderCreateBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderCreateBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderCreateBlocState()';
}


}

/// @nodoc
class $ReminderCreateBlocStateCopyWith<$Res>  {
$ReminderCreateBlocStateCopyWith(ReminderCreateBlocState _, $Res Function(ReminderCreateBlocState) __);
}


/// Adds pattern-matching-related methods to [ReminderCreateBlocState].
extension ReminderCreateBlocStatePatterns on ReminderCreateBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderCreateBlocStateInitialState value)?  initial,TResult Function( _GetReminderCreateBlocStateLoadingState value)?  loading,TResult Function( _GetReminderCreateBlocStateErrorState value)?  error,TResult Function( _GetReminderCreateBlocStateLoadedState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderCreateBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderCreateBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderCreateBlocStateErrorState() when error != null:
return error(_that);case _GetReminderCreateBlocStateLoadedState() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderCreateBlocStateInitialState value)  initial,required TResult Function( _GetReminderCreateBlocStateLoadingState value)  loading,required TResult Function( _GetReminderCreateBlocStateErrorState value)  error,required TResult Function( _GetReminderCreateBlocStateLoadedState value)  success,}){
final _that = this;
switch (_that) {
case _ReminderCreateBlocStateInitialState():
return initial(_that);case _GetReminderCreateBlocStateLoadingState():
return loading(_that);case _GetReminderCreateBlocStateErrorState():
return error(_that);case _GetReminderCreateBlocStateLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderCreateBlocStateInitialState value)?  initial,TResult? Function( _GetReminderCreateBlocStateLoadingState value)?  loading,TResult? Function( _GetReminderCreateBlocStateErrorState value)?  error,TResult? Function( _GetReminderCreateBlocStateLoadedState value)?  success,}){
final _that = this;
switch (_that) {
case _ReminderCreateBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderCreateBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderCreateBlocStateErrorState() when error != null:
return error(_that);case _GetReminderCreateBlocStateLoadedState() when success != null:
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
case _ReminderCreateBlocStateInitialState() when initial != null:
return initial();case _GetReminderCreateBlocStateLoadingState() when loading != null:
return loading();case _GetReminderCreateBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderCreateBlocStateLoadedState() when success != null:
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
case _ReminderCreateBlocStateInitialState():
return initial();case _GetReminderCreateBlocStateLoadingState():
return loading();case _GetReminderCreateBlocStateErrorState():
return error(_that.message);case _GetReminderCreateBlocStateLoadedState():
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
case _ReminderCreateBlocStateInitialState() when initial != null:
return initial();case _GetReminderCreateBlocStateLoadingState() when loading != null:
return loading();case _GetReminderCreateBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderCreateBlocStateLoadedState() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _ReminderCreateBlocStateInitialState implements ReminderCreateBlocState {
  const _ReminderCreateBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderCreateBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderCreateBlocState.initial()';
}


}




/// @nodoc


class _GetReminderCreateBlocStateLoadingState implements ReminderCreateBlocState {
  const _GetReminderCreateBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderCreateBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderCreateBlocState.loading()';
}


}




/// @nodoc


class _GetReminderCreateBlocStateErrorState implements ReminderCreateBlocState {
  const _GetReminderCreateBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderCreateBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderCreateBlocStateErrorStateCopyWith<_GetReminderCreateBlocStateErrorState> get copyWith => __$GetReminderCreateBlocStateErrorStateCopyWithImpl<_GetReminderCreateBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderCreateBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderCreateBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderCreateBlocStateErrorStateCopyWith<$Res> implements $ReminderCreateBlocStateCopyWith<$Res> {
  factory _$GetReminderCreateBlocStateErrorStateCopyWith(_GetReminderCreateBlocStateErrorState value, $Res Function(_GetReminderCreateBlocStateErrorState) _then) = __$GetReminderCreateBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderCreateBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetReminderCreateBlocStateErrorStateCopyWith<$Res> {
  __$GetReminderCreateBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderCreateBlocStateErrorState _self;
  final $Res Function(_GetReminderCreateBlocStateErrorState) _then;

/// Create a copy of ReminderCreateBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderCreateBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderCreateBlocStateLoadedState implements ReminderCreateBlocState {
  const _GetReminderCreateBlocStateLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderCreateBlocStateLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderCreateBlocState.success()';
}


}




// dart format on

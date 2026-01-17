// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderSummaryBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderSummaryBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderSummaryBlocState()';
}


}

/// @nodoc
class $ReminderSummaryBlocStateCopyWith<$Res>  {
$ReminderSummaryBlocStateCopyWith(ReminderSummaryBlocState _, $Res Function(ReminderSummaryBlocState) __);
}


/// Adds pattern-matching-related methods to [ReminderSummaryBlocState].
extension ReminderSummaryBlocStatePatterns on ReminderSummaryBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderSummaryBlocStateInitialState value)?  initial,TResult Function( _GetReminderSummaryBlocStateLoadingState value)?  loading,TResult Function( _GetReminderSummaryBlocStateErrorState value)?  error,TResult Function( _GetReminderSummaryBlocStateLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderSummaryBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderSummaryBlocStateErrorState() when error != null:
return error(_that);case _GetReminderSummaryBlocStateLoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderSummaryBlocStateInitialState value)  initial,required TResult Function( _GetReminderSummaryBlocStateLoadingState value)  loading,required TResult Function( _GetReminderSummaryBlocStateErrorState value)  error,required TResult Function( _GetReminderSummaryBlocStateLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState():
return initial(_that);case _GetReminderSummaryBlocStateLoadingState():
return loading(_that);case _GetReminderSummaryBlocStateErrorState():
return error(_that);case _GetReminderSummaryBlocStateLoadedState():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderSummaryBlocStateInitialState value)?  initial,TResult? Function( _GetReminderSummaryBlocStateLoadingState value)?  loading,TResult? Function( _GetReminderSummaryBlocStateErrorState value)?  error,TResult? Function( _GetReminderSummaryBlocStateLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderSummaryBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderSummaryBlocStateErrorState() when error != null:
return error(_that);case _GetReminderSummaryBlocStateLoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( ReminderSummaryState state)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState() when initial != null:
return initial();case _GetReminderSummaryBlocStateLoadingState() when loading != null:
return loading();case _GetReminderSummaryBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderSummaryBlocStateLoadedState() when loaded != null:
return loaded(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( ReminderSummaryState state)  loaded,}) {final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState():
return initial();case _GetReminderSummaryBlocStateLoadingState():
return loading();case _GetReminderSummaryBlocStateErrorState():
return error(_that.message);case _GetReminderSummaryBlocStateLoadedState():
return loaded(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( ReminderSummaryState state)?  loaded,}) {final _that = this;
switch (_that) {
case _ReminderSummaryBlocStateInitialState() when initial != null:
return initial();case _GetReminderSummaryBlocStateLoadingState() when loading != null:
return loading();case _GetReminderSummaryBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderSummaryBlocStateLoadedState() when loaded != null:
return loaded(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderSummaryBlocStateInitialState implements ReminderSummaryBlocState {
  const _ReminderSummaryBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderSummaryBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderSummaryBlocState.initial()';
}


}




/// @nodoc


class _GetReminderSummaryBlocStateLoadingState implements ReminderSummaryBlocState {
  const _GetReminderSummaryBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderSummaryBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderSummaryBlocState.loading()';
}


}




/// @nodoc


class _GetReminderSummaryBlocStateErrorState implements ReminderSummaryBlocState {
  const _GetReminderSummaryBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderSummaryBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderSummaryBlocStateErrorStateCopyWith<_GetReminderSummaryBlocStateErrorState> get copyWith => __$GetReminderSummaryBlocStateErrorStateCopyWithImpl<_GetReminderSummaryBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderSummaryBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderSummaryBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderSummaryBlocStateErrorStateCopyWith<$Res> implements $ReminderSummaryBlocStateCopyWith<$Res> {
  factory _$GetReminderSummaryBlocStateErrorStateCopyWith(_GetReminderSummaryBlocStateErrorState value, $Res Function(_GetReminderSummaryBlocStateErrorState) _then) = __$GetReminderSummaryBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderSummaryBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetReminderSummaryBlocStateErrorStateCopyWith<$Res> {
  __$GetReminderSummaryBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderSummaryBlocStateErrorState _self;
  final $Res Function(_GetReminderSummaryBlocStateErrorState) _then;

/// Create a copy of ReminderSummaryBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderSummaryBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderSummaryBlocStateLoadedState implements ReminderSummaryBlocState {
  const _GetReminderSummaryBlocStateLoadedState({required this.state});
  

 final  ReminderSummaryState state;

/// Create a copy of ReminderSummaryBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderSummaryBlocStateLoadedStateCopyWith<_GetReminderSummaryBlocStateLoadedState> get copyWith => __$GetReminderSummaryBlocStateLoadedStateCopyWithImpl<_GetReminderSummaryBlocStateLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderSummaryBlocStateLoadedState&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'ReminderSummaryBlocState.loaded(state: $state)';
}


}

/// @nodoc
abstract mixin class _$GetReminderSummaryBlocStateLoadedStateCopyWith<$Res> implements $ReminderSummaryBlocStateCopyWith<$Res> {
  factory _$GetReminderSummaryBlocStateLoadedStateCopyWith(_GetReminderSummaryBlocStateLoadedState value, $Res Function(_GetReminderSummaryBlocStateLoadedState) _then) = __$GetReminderSummaryBlocStateLoadedStateCopyWithImpl;
@useResult
$Res call({
 ReminderSummaryState state
});




}
/// @nodoc
class __$GetReminderSummaryBlocStateLoadedStateCopyWithImpl<$Res>
    implements _$GetReminderSummaryBlocStateLoadedStateCopyWith<$Res> {
  __$GetReminderSummaryBlocStateLoadedStateCopyWithImpl(this._self, this._then);

  final _GetReminderSummaryBlocStateLoadedState _self;
  final $Res Function(_GetReminderSummaryBlocStateLoadedState) _then;

/// Create a copy of ReminderSummaryBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_GetReminderSummaryBlocStateLoadedState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as ReminderSummaryState,
  ));
}


}

// dart format on

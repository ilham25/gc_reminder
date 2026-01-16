// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderListBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderListBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderListBlocState()';
}


}

/// @nodoc
class $ReminderListBlocStateCopyWith<$Res>  {
$ReminderListBlocStateCopyWith(ReminderListBlocState _, $Res Function(ReminderListBlocState) __);
}


/// Adds pattern-matching-related methods to [ReminderListBlocState].
extension ReminderListBlocStatePatterns on ReminderListBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderListBlocStateInitialState value)?  initial,TResult Function( _GetReminderListBlocStateLoadingState value)?  loading,TResult Function( _GetReminderListBlocStateErrorState value)?  error,TResult Function( _GetReminderListBlocStateLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderListBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderListBlocStateErrorState() when error != null:
return error(_that);case _GetReminderListBlocStateLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderListBlocStateInitialState value)  initial,required TResult Function( _GetReminderListBlocStateLoadingState value)  loading,required TResult Function( _GetReminderListBlocStateErrorState value)  error,required TResult Function( _GetReminderListBlocStateLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState():
return initial(_that);case _GetReminderListBlocStateLoadingState():
return loading(_that);case _GetReminderListBlocStateErrorState():
return error(_that);case _GetReminderListBlocStateLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderListBlocStateInitialState value)?  initial,TResult? Function( _GetReminderListBlocStateLoadingState value)?  loading,TResult? Function( _GetReminderListBlocStateErrorState value)?  error,TResult? Function( _GetReminderListBlocStateLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderListBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderListBlocStateErrorState() when error != null:
return error(_that);case _GetReminderListBlocStateLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( ReminderListState state)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState() when initial != null:
return initial();case _GetReminderListBlocStateLoadingState() when loading != null:
return loading();case _GetReminderListBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderListBlocStateLoadedState() when loaded != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( ReminderListState state)  loaded,}) {final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState():
return initial();case _GetReminderListBlocStateLoadingState():
return loading();case _GetReminderListBlocStateErrorState():
return error(_that.message);case _GetReminderListBlocStateLoadedState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( ReminderListState state)?  loaded,}) {final _that = this;
switch (_that) {
case _ReminderListBlocStateInitialState() when initial != null:
return initial();case _GetReminderListBlocStateLoadingState() when loading != null:
return loading();case _GetReminderListBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderListBlocStateLoadedState() when loaded != null:
return loaded(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderListBlocStateInitialState implements ReminderListBlocState {
  const _ReminderListBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderListBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderListBlocState.initial()';
}


}




/// @nodoc


class _GetReminderListBlocStateLoadingState implements ReminderListBlocState {
  const _GetReminderListBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderListBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderListBlocState.loading()';
}


}




/// @nodoc


class _GetReminderListBlocStateErrorState implements ReminderListBlocState {
  const _GetReminderListBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderListBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderListBlocStateErrorStateCopyWith<_GetReminderListBlocStateErrorState> get copyWith => __$GetReminderListBlocStateErrorStateCopyWithImpl<_GetReminderListBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderListBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderListBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderListBlocStateErrorStateCopyWith<$Res> implements $ReminderListBlocStateCopyWith<$Res> {
  factory _$GetReminderListBlocStateErrorStateCopyWith(_GetReminderListBlocStateErrorState value, $Res Function(_GetReminderListBlocStateErrorState) _then) = __$GetReminderListBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderListBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetReminderListBlocStateErrorStateCopyWith<$Res> {
  __$GetReminderListBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderListBlocStateErrorState _self;
  final $Res Function(_GetReminderListBlocStateErrorState) _then;

/// Create a copy of ReminderListBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderListBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderListBlocStateLoadedState implements ReminderListBlocState {
  const _GetReminderListBlocStateLoadedState({required this.state});
  

 final  ReminderListState state;

/// Create a copy of ReminderListBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderListBlocStateLoadedStateCopyWith<_GetReminderListBlocStateLoadedState> get copyWith => __$GetReminderListBlocStateLoadedStateCopyWithImpl<_GetReminderListBlocStateLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderListBlocStateLoadedState&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'ReminderListBlocState.loaded(state: $state)';
}


}

/// @nodoc
abstract mixin class _$GetReminderListBlocStateLoadedStateCopyWith<$Res> implements $ReminderListBlocStateCopyWith<$Res> {
  factory _$GetReminderListBlocStateLoadedStateCopyWith(_GetReminderListBlocStateLoadedState value, $Res Function(_GetReminderListBlocStateLoadedState) _then) = __$GetReminderListBlocStateLoadedStateCopyWithImpl;
@useResult
$Res call({
 ReminderListState state
});




}
/// @nodoc
class __$GetReminderListBlocStateLoadedStateCopyWithImpl<$Res>
    implements _$GetReminderListBlocStateLoadedStateCopyWith<$Res> {
  __$GetReminderListBlocStateLoadedStateCopyWithImpl(this._self, this._then);

  final _GetReminderListBlocStateLoadedState _self;
  final $Res Function(_GetReminderListBlocStateLoadedState) _then;

/// Create a copy of ReminderListBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_GetReminderListBlocStateLoadedState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as ReminderListState,
  ));
}


}

// dart format on

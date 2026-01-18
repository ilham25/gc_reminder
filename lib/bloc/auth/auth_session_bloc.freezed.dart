// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthSessionBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthSessionBlocState()';
}


}

/// @nodoc
class $AuthSessionBlocStateCopyWith<$Res>  {
$AuthSessionBlocStateCopyWith(AuthSessionBlocState _, $Res Function(AuthSessionBlocState) __);
}


/// Adds pattern-matching-related methods to [AuthSessionBlocState].
extension AuthSessionBlocStatePatterns on AuthSessionBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthSessionBlocInitialState value)?  initial,TResult Function( _GetAuthSessionBlocLoadingState value)?  loading,TResult Function( _GetAuthSessionBlocErrorState value)?  error,TResult Function( _GetAuthSessionBlocLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState() when initial != null:
return initial(_that);case _GetAuthSessionBlocLoadingState() when loading != null:
return loading(_that);case _GetAuthSessionBlocErrorState() when error != null:
return error(_that);case _GetAuthSessionBlocLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthSessionBlocInitialState value)  initial,required TResult Function( _GetAuthSessionBlocLoadingState value)  loading,required TResult Function( _GetAuthSessionBlocErrorState value)  error,required TResult Function( _GetAuthSessionBlocLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState():
return initial(_that);case _GetAuthSessionBlocLoadingState():
return loading(_that);case _GetAuthSessionBlocErrorState():
return error(_that);case _GetAuthSessionBlocLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthSessionBlocInitialState value)?  initial,TResult? Function( _GetAuthSessionBlocLoadingState value)?  loading,TResult? Function( _GetAuthSessionBlocErrorState value)?  error,TResult? Function( _GetAuthSessionBlocLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState() when initial != null:
return initial(_that);case _GetAuthSessionBlocLoadingState() when loading != null:
return loading(_that);case _GetAuthSessionBlocErrorState() when error != null:
return error(_that);case _GetAuthSessionBlocLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( AuthSessionState state)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState() when initial != null:
return initial();case _GetAuthSessionBlocLoadingState() when loading != null:
return loading();case _GetAuthSessionBlocErrorState() when error != null:
return error(_that.message);case _GetAuthSessionBlocLoadedState() when loaded != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( AuthSessionState state)  loaded,}) {final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState():
return initial();case _GetAuthSessionBlocLoadingState():
return loading();case _GetAuthSessionBlocErrorState():
return error(_that.message);case _GetAuthSessionBlocLoadedState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( AuthSessionState state)?  loaded,}) {final _that = this;
switch (_that) {
case _AuthSessionBlocInitialState() when initial != null:
return initial();case _GetAuthSessionBlocLoadingState() when loading != null:
return loading();case _GetAuthSessionBlocErrorState() when error != null:
return error(_that.message);case _GetAuthSessionBlocLoadedState() when loaded != null:
return loaded(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _AuthSessionBlocInitialState implements AuthSessionBlocState {
  const _AuthSessionBlocInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionBlocInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthSessionBlocState.initial()';
}


}




/// @nodoc


class _GetAuthSessionBlocLoadingState implements AuthSessionBlocState {
  const _GetAuthSessionBlocLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAuthSessionBlocLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthSessionBlocState.loading()';
}


}




/// @nodoc


class _GetAuthSessionBlocErrorState implements AuthSessionBlocState {
  const _GetAuthSessionBlocErrorState(this.message);
  

 final  String message;

/// Create a copy of AuthSessionBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAuthSessionBlocErrorStateCopyWith<_GetAuthSessionBlocErrorState> get copyWith => __$GetAuthSessionBlocErrorStateCopyWithImpl<_GetAuthSessionBlocErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAuthSessionBlocErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthSessionBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetAuthSessionBlocErrorStateCopyWith<$Res> implements $AuthSessionBlocStateCopyWith<$Res> {
  factory _$GetAuthSessionBlocErrorStateCopyWith(_GetAuthSessionBlocErrorState value, $Res Function(_GetAuthSessionBlocErrorState) _then) = __$GetAuthSessionBlocErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetAuthSessionBlocErrorStateCopyWithImpl<$Res>
    implements _$GetAuthSessionBlocErrorStateCopyWith<$Res> {
  __$GetAuthSessionBlocErrorStateCopyWithImpl(this._self, this._then);

  final _GetAuthSessionBlocErrorState _self;
  final $Res Function(_GetAuthSessionBlocErrorState) _then;

/// Create a copy of AuthSessionBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetAuthSessionBlocErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAuthSessionBlocLoadedState implements AuthSessionBlocState {
  const _GetAuthSessionBlocLoadedState({required this.state});
  

 final  AuthSessionState state;

/// Create a copy of AuthSessionBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAuthSessionBlocLoadedStateCopyWith<_GetAuthSessionBlocLoadedState> get copyWith => __$GetAuthSessionBlocLoadedStateCopyWithImpl<_GetAuthSessionBlocLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAuthSessionBlocLoadedState&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'AuthSessionBlocState.loaded(state: $state)';
}


}

/// @nodoc
abstract mixin class _$GetAuthSessionBlocLoadedStateCopyWith<$Res> implements $AuthSessionBlocStateCopyWith<$Res> {
  factory _$GetAuthSessionBlocLoadedStateCopyWith(_GetAuthSessionBlocLoadedState value, $Res Function(_GetAuthSessionBlocLoadedState) _then) = __$GetAuthSessionBlocLoadedStateCopyWithImpl;
@useResult
$Res call({
 AuthSessionState state
});




}
/// @nodoc
class __$GetAuthSessionBlocLoadedStateCopyWithImpl<$Res>
    implements _$GetAuthSessionBlocLoadedStateCopyWith<$Res> {
  __$GetAuthSessionBlocLoadedStateCopyWithImpl(this._self, this._then);

  final _GetAuthSessionBlocLoadedState _self;
  final $Res Function(_GetAuthSessionBlocLoadedState) _then;

/// Create a copy of AuthSessionBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_GetAuthSessionBlocLoadedState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as AuthSessionState,
  ));
}


}

// dart format on

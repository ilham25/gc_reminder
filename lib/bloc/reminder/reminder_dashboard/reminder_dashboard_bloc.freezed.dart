// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderDashboardBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderDashboardBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardBlocState()';
}


}

/// @nodoc
class $ReminderDashboardBlocStateCopyWith<$Res>  {
$ReminderDashboardBlocStateCopyWith(ReminderDashboardBlocState _, $Res Function(ReminderDashboardBlocState) __);
}


/// Adds pattern-matching-related methods to [ReminderDashboardBlocState].
extension ReminderDashboardBlocStatePatterns on ReminderDashboardBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderDashboardBlocStateInitialState value)?  initial,TResult Function( _GetReminderDashboardBlocStateLoadingState value)?  loading,TResult Function( _GetReminderDashboardBlocStateErrorState value)?  error,TResult Function( _GetReminderDashboardBlocStateLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderDashboardBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderDashboardBlocStateErrorState() when error != null:
return error(_that);case _GetReminderDashboardBlocStateLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderDashboardBlocStateInitialState value)  initial,required TResult Function( _GetReminderDashboardBlocStateLoadingState value)  loading,required TResult Function( _GetReminderDashboardBlocStateErrorState value)  error,required TResult Function( _GetReminderDashboardBlocStateLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState():
return initial(_that);case _GetReminderDashboardBlocStateLoadingState():
return loading(_that);case _GetReminderDashboardBlocStateErrorState():
return error(_that);case _GetReminderDashboardBlocStateLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderDashboardBlocStateInitialState value)?  initial,TResult? Function( _GetReminderDashboardBlocStateLoadingState value)?  loading,TResult? Function( _GetReminderDashboardBlocStateErrorState value)?  error,TResult? Function( _GetReminderDashboardBlocStateLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState() when initial != null:
return initial(_that);case _GetReminderDashboardBlocStateLoadingState() when loading != null:
return loading(_that);case _GetReminderDashboardBlocStateErrorState() when error != null:
return error(_that);case _GetReminderDashboardBlocStateLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( ReminderDashboardState state,  ReminderDashboardActionState? action)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState() when initial != null:
return initial();case _GetReminderDashboardBlocStateLoadingState() when loading != null:
return loading();case _GetReminderDashboardBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderDashboardBlocStateLoadedState() when loaded != null:
return loaded(_that.state,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( ReminderDashboardState state,  ReminderDashboardActionState? action)  loaded,}) {final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState():
return initial();case _GetReminderDashboardBlocStateLoadingState():
return loading();case _GetReminderDashboardBlocStateErrorState():
return error(_that.message);case _GetReminderDashboardBlocStateLoadedState():
return loaded(_that.state,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( ReminderDashboardState state,  ReminderDashboardActionState? action)?  loaded,}) {final _that = this;
switch (_that) {
case _ReminderDashboardBlocStateInitialState() when initial != null:
return initial();case _GetReminderDashboardBlocStateLoadingState() when loading != null:
return loading();case _GetReminderDashboardBlocStateErrorState() when error != null:
return error(_that.message);case _GetReminderDashboardBlocStateLoadedState() when loaded != null:
return loaded(_that.state,_that.action);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderDashboardBlocStateInitialState implements ReminderDashboardBlocState {
  const _ReminderDashboardBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderDashboardBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardBlocState.initial()';
}


}




/// @nodoc


class _GetReminderDashboardBlocStateLoadingState implements ReminderDashboardBlocState {
  const _GetReminderDashboardBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardBlocState.loading()';
}


}




/// @nodoc


class _GetReminderDashboardBlocStateErrorState implements ReminderDashboardBlocState {
  const _GetReminderDashboardBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderDashboardBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderDashboardBlocStateErrorStateCopyWith<_GetReminderDashboardBlocStateErrorState> get copyWith => __$GetReminderDashboardBlocStateErrorStateCopyWithImpl<_GetReminderDashboardBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderDashboardBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderDashboardBlocStateErrorStateCopyWith<$Res> implements $ReminderDashboardBlocStateCopyWith<$Res> {
  factory _$GetReminderDashboardBlocStateErrorStateCopyWith(_GetReminderDashboardBlocStateErrorState value, $Res Function(_GetReminderDashboardBlocStateErrorState) _then) = __$GetReminderDashboardBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderDashboardBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetReminderDashboardBlocStateErrorStateCopyWith<$Res> {
  __$GetReminderDashboardBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderDashboardBlocStateErrorState _self;
  final $Res Function(_GetReminderDashboardBlocStateErrorState) _then;

/// Create a copy of ReminderDashboardBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderDashboardBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderDashboardBlocStateLoadedState implements ReminderDashboardBlocState {
  const _GetReminderDashboardBlocStateLoadedState({required this.state, this.action});
  

 final  ReminderDashboardState state;
 final  ReminderDashboardActionState? action;

/// Create a copy of ReminderDashboardBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderDashboardBlocStateLoadedStateCopyWith<_GetReminderDashboardBlocStateLoadedState> get copyWith => __$GetReminderDashboardBlocStateLoadedStateCopyWithImpl<_GetReminderDashboardBlocStateLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardBlocStateLoadedState&&(identical(other.state, state) || other.state == state)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,state,action);

@override
String toString() {
  return 'ReminderDashboardBlocState.loaded(state: $state, action: $action)';
}


}

/// @nodoc
abstract mixin class _$GetReminderDashboardBlocStateLoadedStateCopyWith<$Res> implements $ReminderDashboardBlocStateCopyWith<$Res> {
  factory _$GetReminderDashboardBlocStateLoadedStateCopyWith(_GetReminderDashboardBlocStateLoadedState value, $Res Function(_GetReminderDashboardBlocStateLoadedState) _then) = __$GetReminderDashboardBlocStateLoadedStateCopyWithImpl;
@useResult
$Res call({
 ReminderDashboardState state, ReminderDashboardActionState? action
});


$ReminderDashboardActionStateCopyWith<$Res>? get action;

}
/// @nodoc
class __$GetReminderDashboardBlocStateLoadedStateCopyWithImpl<$Res>
    implements _$GetReminderDashboardBlocStateLoadedStateCopyWith<$Res> {
  __$GetReminderDashboardBlocStateLoadedStateCopyWithImpl(this._self, this._then);

  final _GetReminderDashboardBlocStateLoadedState _self;
  final $Res Function(_GetReminderDashboardBlocStateLoadedState) _then;

/// Create a copy of ReminderDashboardBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,Object? action = freezed,}) {
  return _then(_GetReminderDashboardBlocStateLoadedState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as ReminderDashboardState,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ReminderDashboardActionState?,
  ));
}

/// Create a copy of ReminderDashboardBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderDashboardActionStateCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $ReminderDashboardActionStateCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}

/// @nodoc
mixin _$ReminderDashboardActionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderDashboardActionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardActionState()';
}


}

/// @nodoc
class $ReminderDashboardActionStateCopyWith<$Res>  {
$ReminderDashboardActionStateCopyWith(ReminderDashboardActionState _, $Res Function(ReminderDashboardActionState) __);
}


/// Adds pattern-matching-related methods to [ReminderDashboardActionState].
extension ReminderDashboardActionStatePatterns on ReminderDashboardActionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReminderDashboardActionInitialState value)?  initial,TResult Function( _GetReminderDashboardActionLoadingState value)?  loading,TResult Function( _GetReminderDashboardActionErrorState value)?  error,TResult Function( _GetReminderDashboardActionLoadedState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState() when initial != null:
return initial(_that);case _GetReminderDashboardActionLoadingState() when loading != null:
return loading(_that);case _GetReminderDashboardActionErrorState() when error != null:
return error(_that);case _GetReminderDashboardActionLoadedState() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReminderDashboardActionInitialState value)  initial,required TResult Function( _GetReminderDashboardActionLoadingState value)  loading,required TResult Function( _GetReminderDashboardActionErrorState value)  error,required TResult Function( _GetReminderDashboardActionLoadedState value)  success,}){
final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState():
return initial(_that);case _GetReminderDashboardActionLoadingState():
return loading(_that);case _GetReminderDashboardActionErrorState():
return error(_that);case _GetReminderDashboardActionLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReminderDashboardActionInitialState value)?  initial,TResult? Function( _GetReminderDashboardActionLoadingState value)?  loading,TResult? Function( _GetReminderDashboardActionErrorState value)?  error,TResult? Function( _GetReminderDashboardActionLoadedState value)?  success,}){
final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState() when initial != null:
return initial(_that);case _GetReminderDashboardActionLoadingState() when loading != null:
return loading(_that);case _GetReminderDashboardActionErrorState() when error != null:
return error(_that);case _GetReminderDashboardActionLoadedState() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( String actionName)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState() when initial != null:
return initial();case _GetReminderDashboardActionLoadingState() when loading != null:
return loading();case _GetReminderDashboardActionErrorState() when error != null:
return error(_that.message);case _GetReminderDashboardActionLoadedState() when success != null:
return success(_that.actionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( String actionName)  success,}) {final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState():
return initial();case _GetReminderDashboardActionLoadingState():
return loading();case _GetReminderDashboardActionErrorState():
return error(_that.message);case _GetReminderDashboardActionLoadedState():
return success(_that.actionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( String actionName)?  success,}) {final _that = this;
switch (_that) {
case _ReminderDashboardActionInitialState() when initial != null:
return initial();case _GetReminderDashboardActionLoadingState() when loading != null:
return loading();case _GetReminderDashboardActionErrorState() when error != null:
return error(_that.message);case _GetReminderDashboardActionLoadedState() when success != null:
return success(_that.actionName);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderDashboardActionInitialState implements ReminderDashboardActionState {
  const _ReminderDashboardActionInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderDashboardActionInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardActionState.initial()';
}


}




/// @nodoc


class _GetReminderDashboardActionLoadingState implements ReminderDashboardActionState {
  const _GetReminderDashboardActionLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardActionLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderDashboardActionState.loading()';
}


}




/// @nodoc


class _GetReminderDashboardActionErrorState implements ReminderDashboardActionState {
  const _GetReminderDashboardActionErrorState(this.message);
  

 final  String message;

/// Create a copy of ReminderDashboardActionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderDashboardActionErrorStateCopyWith<_GetReminderDashboardActionErrorState> get copyWith => __$GetReminderDashboardActionErrorStateCopyWithImpl<_GetReminderDashboardActionErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardActionErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReminderDashboardActionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetReminderDashboardActionErrorStateCopyWith<$Res> implements $ReminderDashboardActionStateCopyWith<$Res> {
  factory _$GetReminderDashboardActionErrorStateCopyWith(_GetReminderDashboardActionErrorState value, $Res Function(_GetReminderDashboardActionErrorState) _then) = __$GetReminderDashboardActionErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetReminderDashboardActionErrorStateCopyWithImpl<$Res>
    implements _$GetReminderDashboardActionErrorStateCopyWith<$Res> {
  __$GetReminderDashboardActionErrorStateCopyWithImpl(this._self, this._then);

  final _GetReminderDashboardActionErrorState _self;
  final $Res Function(_GetReminderDashboardActionErrorState) _then;

/// Create a copy of ReminderDashboardActionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetReminderDashboardActionErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetReminderDashboardActionLoadedState implements ReminderDashboardActionState {
  const _GetReminderDashboardActionLoadedState({required this.actionName});
  

 final  String actionName;

/// Create a copy of ReminderDashboardActionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReminderDashboardActionLoadedStateCopyWith<_GetReminderDashboardActionLoadedState> get copyWith => __$GetReminderDashboardActionLoadedStateCopyWithImpl<_GetReminderDashboardActionLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReminderDashboardActionLoadedState&&(identical(other.actionName, actionName) || other.actionName == actionName));
}


@override
int get hashCode => Object.hash(runtimeType,actionName);

@override
String toString() {
  return 'ReminderDashboardActionState.success(actionName: $actionName)';
}


}

/// @nodoc
abstract mixin class _$GetReminderDashboardActionLoadedStateCopyWith<$Res> implements $ReminderDashboardActionStateCopyWith<$Res> {
  factory _$GetReminderDashboardActionLoadedStateCopyWith(_GetReminderDashboardActionLoadedState value, $Res Function(_GetReminderDashboardActionLoadedState) _then) = __$GetReminderDashboardActionLoadedStateCopyWithImpl;
@useResult
$Res call({
 String actionName
});




}
/// @nodoc
class __$GetReminderDashboardActionLoadedStateCopyWithImpl<$Res>
    implements _$GetReminderDashboardActionLoadedStateCopyWith<$Res> {
  __$GetReminderDashboardActionLoadedStateCopyWithImpl(this._self, this._then);

  final _GetReminderDashboardActionLoadedState _self;
  final $Res Function(_GetReminderDashboardActionLoadedState) _then;

/// Create a copy of ReminderDashboardActionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? actionName = null,}) {
  return _then(_GetReminderDashboardActionLoadedState(
actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

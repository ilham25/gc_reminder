// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingBlocState()';
}


}

/// @nodoc
class $OnboardingBlocStateCopyWith<$Res>  {
$OnboardingBlocStateCopyWith(OnboardingBlocState _, $Res Function(OnboardingBlocState) __);
}


/// Adds pattern-matching-related methods to [OnboardingBlocState].
extension OnboardingBlocStatePatterns on OnboardingBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnboardingBlocStateInitialState value)?  initial,TResult Function( _GetOnboardingBlocStateLoadingState value)?  loading,TResult Function( _GetOnboardingBlocStateErrorState value)?  error,TResult Function( _GetOnboardingBlocStateLoadedState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingBlocStateInitialState() when initial != null:
return initial(_that);case _GetOnboardingBlocStateLoadingState() when loading != null:
return loading(_that);case _GetOnboardingBlocStateErrorState() when error != null:
return error(_that);case _GetOnboardingBlocStateLoadedState() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnboardingBlocStateInitialState value)  initial,required TResult Function( _GetOnboardingBlocStateLoadingState value)  loading,required TResult Function( _GetOnboardingBlocStateErrorState value)  error,required TResult Function( _GetOnboardingBlocStateLoadedState value)  success,}){
final _that = this;
switch (_that) {
case _OnboardingBlocStateInitialState():
return initial(_that);case _GetOnboardingBlocStateLoadingState():
return loading(_that);case _GetOnboardingBlocStateErrorState():
return error(_that);case _GetOnboardingBlocStateLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnboardingBlocStateInitialState value)?  initial,TResult? Function( _GetOnboardingBlocStateLoadingState value)?  loading,TResult? Function( _GetOnboardingBlocStateErrorState value)?  error,TResult? Function( _GetOnboardingBlocStateLoadedState value)?  success,}){
final _that = this;
switch (_that) {
case _OnboardingBlocStateInitialState() when initial != null:
return initial(_that);case _GetOnboardingBlocStateLoadingState() when loading != null:
return loading(_that);case _GetOnboardingBlocStateErrorState() when error != null:
return error(_that);case _GetOnboardingBlocStateLoadedState() when success != null:
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
case _OnboardingBlocStateInitialState() when initial != null:
return initial();case _GetOnboardingBlocStateLoadingState() when loading != null:
return loading();case _GetOnboardingBlocStateErrorState() when error != null:
return error(_that.message);case _GetOnboardingBlocStateLoadedState() when success != null:
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
case _OnboardingBlocStateInitialState():
return initial();case _GetOnboardingBlocStateLoadingState():
return loading();case _GetOnboardingBlocStateErrorState():
return error(_that.message);case _GetOnboardingBlocStateLoadedState():
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
case _OnboardingBlocStateInitialState() when initial != null:
return initial();case _GetOnboardingBlocStateLoadingState() when loading != null:
return loading();case _GetOnboardingBlocStateErrorState() when error != null:
return error(_that.message);case _GetOnboardingBlocStateLoadedState() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingBlocStateInitialState implements OnboardingBlocState {
  const _OnboardingBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingBlocState.initial()';
}


}




/// @nodoc


class _GetOnboardingBlocStateLoadingState implements OnboardingBlocState {
  const _GetOnboardingBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOnboardingBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingBlocState.loading()';
}


}




/// @nodoc


class _GetOnboardingBlocStateErrorState implements OnboardingBlocState {
  const _GetOnboardingBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of OnboardingBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOnboardingBlocStateErrorStateCopyWith<_GetOnboardingBlocStateErrorState> get copyWith => __$GetOnboardingBlocStateErrorStateCopyWithImpl<_GetOnboardingBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOnboardingBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OnboardingBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetOnboardingBlocStateErrorStateCopyWith<$Res> implements $OnboardingBlocStateCopyWith<$Res> {
  factory _$GetOnboardingBlocStateErrorStateCopyWith(_GetOnboardingBlocStateErrorState value, $Res Function(_GetOnboardingBlocStateErrorState) _then) = __$GetOnboardingBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetOnboardingBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetOnboardingBlocStateErrorStateCopyWith<$Res> {
  __$GetOnboardingBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetOnboardingBlocStateErrorState _self;
  final $Res Function(_GetOnboardingBlocStateErrorState) _then;

/// Create a copy of OnboardingBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetOnboardingBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetOnboardingBlocStateLoadedState implements OnboardingBlocState {
  const _GetOnboardingBlocStateLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOnboardingBlocStateLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingBlocState.success()';
}


}




// dart format on

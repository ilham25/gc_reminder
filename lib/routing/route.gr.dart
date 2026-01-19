// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:collection/collection.dart' as _i11;
import 'package:flutter/material.dart' as _i9;
import 'package:gc_reminder/core/widgets/filter/filter.dart' as _i1;
import 'package:gc_reminder/core/widgets/search/search.dart' as _i4;
import 'package:gc_reminder/domain/models/map/map_model.dart' as _i10;
import 'package:gc_reminder/presentation/common/select_location_screen.dart'
    as _i5;
import 'package:gc_reminder/presentation/common/view_location_screen.dart'
    as _i7;
import 'package:gc_reminder/presentation/onboarding/onboarding_screen.dart'
    as _i2;
import 'package:gc_reminder/presentation/reminder/reminder_list_screen.dart'
    as _i3;
import 'package:gc_reminder/presentation/splash/splash_screen.dart' as _i6;

/// generated route for
/// [_i1.FilterScreen]
class FilterRoute extends _i8.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i9.Key? key,
    required _i1.UIKitFilterDelegate<dynamic> delegate,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         FilterRoute.name,
         args: FilterRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'FilterRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return _i1.FilterScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key, required this.delegate});

  final _i9.Key? key;

  final _i1.UIKitFilterDelegate<dynamic> delegate;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key, delegate: $delegate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FilterRouteArgs) return false;
    return key == other.key && delegate == other.delegate;
  }

  @override
  int get hashCode => key.hashCode ^ delegate.hashCode;
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute({List<_i8.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i3.ReminderListScreen]
class ReminderListRoute extends _i8.PageRouteInfo<void> {
  const ReminderListRoute({List<_i8.PageRouteInfo>? children})
    : super(ReminderListRoute.name, initialChildren: children);

  static const String name = 'ReminderListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ReminderListScreen();
    },
  );
}

/// generated route for
/// [_i4.SearchScreen]
class SearchRoute extends _i8.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i9.Key? key,
    required _i4.UIKitSearchDelegate<dynamic> delegate,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return _i4.SearchScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.delegate});

  final _i9.Key? key;

  final _i4.UIKitSearchDelegate<dynamic> delegate;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, delegate: $delegate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SearchRouteArgs) return false;
    return key == other.key && delegate == other.delegate;
  }

  @override
  int get hashCode => key.hashCode ^ delegate.hashCode;
}

/// generated route for
/// [_i5.SelectLocationScreen]
class SelectLocationRoute extends _i8.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute({
    _i9.Key? key,
    List<_i10.MapMarkerModel> markers = const [],
    List<_i8.PageRouteInfo>? children,
  }) : super(
         SelectLocationRoute.name,
         args: SelectLocationRouteArgs(key: key, markers: markers),
         initialChildren: children,
       );

  static const String name = 'SelectLocationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectLocationRouteArgs>(
        orElse: () => const SelectLocationRouteArgs(),
      );
      return _i5.SelectLocationScreen(key: args.key, markers: args.markers);
    },
  );
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({this.key, this.markers = const []});

  final _i9.Key? key;

  final List<_i10.MapMarkerModel> markers;

  @override
  String toString() {
    return 'SelectLocationRouteArgs{key: $key, markers: $markers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SelectLocationRouteArgs) return false;
    return key == other.key &&
        const _i11.ListEquality<_i10.MapMarkerModel>().equals(
          markers,
          other.markers,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i11.ListEquality<_i10.MapMarkerModel>().hash(markers);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashScreen();
    },
  );
}

/// generated route for
/// [_i7.ViewLocationScreen]
class ViewLocationRoute extends _i8.PageRouteInfo<ViewLocationRouteArgs> {
  ViewLocationRoute({
    _i9.Key? key,
    List<_i10.MapMarkerModel> markers = const [],
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ViewLocationRoute.name,
         args: ViewLocationRouteArgs(key: key, markers: markers),
         initialChildren: children,
       );

  static const String name = 'ViewLocationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewLocationRouteArgs>(
        orElse: () => const ViewLocationRouteArgs(),
      );
      return _i7.ViewLocationScreen(key: args.key, markers: args.markers);
    },
  );
}

class ViewLocationRouteArgs {
  const ViewLocationRouteArgs({this.key, this.markers = const []});

  final _i9.Key? key;

  final List<_i10.MapMarkerModel> markers;

  @override
  String toString() {
    return 'ViewLocationRouteArgs{key: $key, markers: $markers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ViewLocationRouteArgs) return false;
    return key == other.key &&
        const _i11.ListEquality<_i10.MapMarkerModel>().equals(
          markers,
          other.markers,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i11.ListEquality<_i10.MapMarkerModel>().hash(markers);
}

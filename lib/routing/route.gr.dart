// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:collection/collection.dart' as _i31;
import 'package:flutter/material.dart' as _i29;
import 'package:gc_reminder/core/widgets/filter/filter.dart' as _i11;
import 'package:gc_reminder/core/widgets/search/search.dart' as _i21;
import 'package:gc_reminder/domain/models/map/map_model.dart' as _i30;
import 'package:gc_reminder/presentation/common/select_location_screen.dart'
    as _i22;
import 'package:gc_reminder/presentation/common/view_location_screen.dart'
    as _i27;
import 'package:gc_reminder/presentation/home/home_screen.dart' as _i14;
import 'package:gc_reminder/presentation/onboarding/onboarding_screen.dart'
    as _i18;
import 'package:gc_reminder/presentation/reminder/reminder_list_screen.dart'
    as _i19;
import 'package:gc_reminder/presentation/splash/splash_screen.dart' as _i25;
import 'package:gc_reminder/presentation/templates/chat/chat_detail_screen.dart'
    as _i1;
import 'package:gc_reminder/presentation/templates/chat/chat_list_screen.dart'
    as _i2;
import 'package:gc_reminder/presentation/templates/ecommerce/ecommerce_bag_screen.dart'
    as _i4;
import 'package:gc_reminder/presentation/templates/ecommerce/ecommerce_checkout_screen.dart'
    as _i5;
import 'package:gc_reminder/presentation/templates/ecommerce/ecommerce_product_detail_screen.dart'
    as _i6;
import 'package:gc_reminder/presentation/templates/ecommerce/ecommerce_screen.dart'
    as _i7;
import 'package:gc_reminder/presentation/templates/empty_state/empty_state_screen.dart'
    as _i8;
import 'package:gc_reminder/presentation/templates/events/events_screen.dart'
    as _i9;
import 'package:gc_reminder/presentation/templates/feedback/feedback_screen.dart'
    as _i10;
import 'package:gc_reminder/presentation/templates/finance/finance_overview_screen.dart'
    as _i12;
import 'package:gc_reminder/presentation/templates/finance/finance_screen.dart'
    as _i13;
import 'package:gc_reminder/presentation/templates/login/confirmation_code_screen.dart'
    as _i3;
import 'package:gc_reminder/presentation/templates/login/login_screen.dart'
    as _i15;
import 'package:gc_reminder/presentation/templates/login/sign_up_screen.dart'
    as _i24;
import 'package:gc_reminder/presentation/templates/onboarding/onboarding_init_screen.dart'
    as _i16;
import 'package:gc_reminder/presentation/templates/onboarding/onboarding_personalize_screen.dart'
    as _i17;
import 'package:gc_reminder/presentation/templates/search_filter/search_filter_screen.dart'
    as _i20;
import 'package:gc_reminder/presentation/templates/settings/settings_screen.dart'
    as _i23;
import 'package:gc_reminder/presentation/templates/subscription_plans/subscription_plans_screen.dart'
    as _i26;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i28.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i29.Key? key,
    required _i2.ChatListModel detail,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i29.Key? key;

  final _i2.ChatListModel detail;

  @override
  String toString() {
    return 'ChatDetailRouteArgs{key: $key, detail: $detail}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChatDetailRouteArgs) return false;
    return key == other.key && detail == other.detail;
  }

  @override
  int get hashCode => key.hashCode ^ detail.hashCode;
}

/// generated route for
/// [_i2.ChatListScreen]
class ChatListRoute extends _i28.PageRouteInfo<void> {
  const ChatListRoute({List<_i28.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.ConfirmationCodeScreen]
class ConfirmationCodeRoute extends _i28.PageRouteInfo<void> {
  const ConfirmationCodeRoute({List<_i28.PageRouteInfo>? children})
    : super(ConfirmationCodeRoute.name, initialChildren: children);

  static const String name = 'ConfirmationCodeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i3.ConfirmationCodeScreen();
    },
  );
}

/// generated route for
/// [_i4.EcommerceBagScreen]
class EcommerceBagRoute extends _i28.PageRouteInfo<void> {
  const EcommerceBagRoute({List<_i28.PageRouteInfo>? children})
    : super(EcommerceBagRoute.name, initialChildren: children);

  static const String name = 'EcommerceBagRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i4.EcommerceBagScreen();
    },
  );
}

/// generated route for
/// [_i5.EcommerceCheckoutScreen]
class EcommerceCheckoutRoute extends _i28.PageRouteInfo<void> {
  const EcommerceCheckoutRoute({List<_i28.PageRouteInfo>? children})
    : super(EcommerceCheckoutRoute.name, initialChildren: children);

  static const String name = 'EcommerceCheckoutRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i5.EcommerceCheckoutScreen();
    },
  );
}

/// generated route for
/// [_i6.EcommerceProductDetailScreen]
class EcommerceProductDetailRoute extends _i28.PageRouteInfo<void> {
  const EcommerceProductDetailRoute({List<_i28.PageRouteInfo>? children})
    : super(EcommerceProductDetailRoute.name, initialChildren: children);

  static const String name = 'EcommerceProductDetailRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i6.EcommerceProductDetailScreen();
    },
  );
}

/// generated route for
/// [_i7.EcommerceScreen]
class EcommerceRoute extends _i28.PageRouteInfo<void> {
  const EcommerceRoute({List<_i28.PageRouteInfo>? children})
    : super(EcommerceRoute.name, initialChildren: children);

  static const String name = 'EcommerceRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i7.EcommerceScreen();
    },
  );
}

/// generated route for
/// [_i8.EmptyStateScreen]
class EmptyStateRoute extends _i28.PageRouteInfo<void> {
  const EmptyStateRoute({List<_i28.PageRouteInfo>? children})
    : super(EmptyStateRoute.name, initialChildren: children);

  static const String name = 'EmptyStateRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i8.EmptyStateScreen();
    },
  );
}

/// generated route for
/// [_i9.EventsScreen]
class EventsRoute extends _i28.PageRouteInfo<void> {
  const EventsRoute({List<_i28.PageRouteInfo>? children})
    : super(EventsRoute.name, initialChildren: children);

  static const String name = 'EventsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i9.EventsScreen();
    },
  );
}

/// generated route for
/// [_i10.FeedbackScreen]
class FeedbackRoute extends _i28.PageRouteInfo<void> {
  const FeedbackRoute({List<_i28.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i10.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i11.FilterScreen]
class FilterRoute extends _i28.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i29.Key? key,
    required _i11.UIKitFilterDelegate<dynamic> delegate,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         FilterRoute.name,
         args: FilterRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'FilterRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return _i11.FilterScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key, required this.delegate});

  final _i29.Key? key;

  final _i11.UIKitFilterDelegate<dynamic> delegate;

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
/// [_i12.FinanceOverviewScreen]
class FinanceOverviewRoute extends _i28.PageRouteInfo<void> {
  const FinanceOverviewRoute({List<_i28.PageRouteInfo>? children})
    : super(FinanceOverviewRoute.name, initialChildren: children);

  static const String name = 'FinanceOverviewRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i12.FinanceOverviewScreen();
    },
  );
}

/// generated route for
/// [_i13.FinanceScreen]
class FinanceRoute extends _i28.PageRouteInfo<void> {
  const FinanceRoute({List<_i28.PageRouteInfo>? children})
    : super(FinanceRoute.name, initialChildren: children);

  static const String name = 'FinanceRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i13.FinanceScreen();
    },
  );
}

/// generated route for
/// [_i14.HomeScreen]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i14.HomeScreen();
    },
  );
}

/// generated route for
/// [_i15.LoginScreen]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i15.LoginScreen();
    },
  );
}

/// generated route for
/// [_i16.OnboardingInitScreen]
class OnboardingInitRoute extends _i28.PageRouteInfo<void> {
  const OnboardingInitRoute({List<_i28.PageRouteInfo>? children})
    : super(OnboardingInitRoute.name, initialChildren: children);

  static const String name = 'OnboardingInitRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i16.OnboardingInitScreen();
    },
  );
}

/// generated route for
/// [_i17.OnboardingPersonalizeScreen]
class OnboardingPersonalizeRoute extends _i28.PageRouteInfo<void> {
  const OnboardingPersonalizeRoute({List<_i28.PageRouteInfo>? children})
    : super(OnboardingPersonalizeRoute.name, initialChildren: children);

  static const String name = 'OnboardingPersonalizeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i17.OnboardingPersonalizeScreen();
    },
  );
}

/// generated route for
/// [_i18.OnboardingScreen]
class OnboardingRoute extends _i28.PageRouteInfo<void> {
  const OnboardingRoute({List<_i28.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i18.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i19.ReminderListScreen]
class ReminderListRoute extends _i28.PageRouteInfo<void> {
  const ReminderListRoute({List<_i28.PageRouteInfo>? children})
    : super(ReminderListRoute.name, initialChildren: children);

  static const String name = 'ReminderListRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i19.ReminderListScreen();
    },
  );
}

/// generated route for
/// [_i20.SearchFilterScreen]
class SearchFilterRoute extends _i28.PageRouteInfo<void> {
  const SearchFilterRoute({List<_i28.PageRouteInfo>? children})
    : super(SearchFilterRoute.name, initialChildren: children);

  static const String name = 'SearchFilterRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i20.SearchFilterScreen();
    },
  );
}

/// generated route for
/// [_i21.SearchScreen]
class SearchRoute extends _i28.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i29.Key? key,
    required _i21.UIKitSearchDelegate<dynamic> delegate,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return _i21.SearchScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.delegate});

  final _i29.Key? key;

  final _i21.UIKitSearchDelegate<dynamic> delegate;

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
/// [_i22.SelectLocationScreen]
class SelectLocationRoute extends _i28.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute({
    _i29.Key? key,
    List<_i30.MapMarkerModel> markers = const [],
    List<_i28.PageRouteInfo>? children,
  }) : super(
         SelectLocationRoute.name,
         args: SelectLocationRouteArgs(key: key, markers: markers),
         initialChildren: children,
       );

  static const String name = 'SelectLocationRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectLocationRouteArgs>(
        orElse: () => const SelectLocationRouteArgs(),
      );
      return _i22.SelectLocationScreen(key: args.key, markers: args.markers);
    },
  );
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({this.key, this.markers = const []});

  final _i29.Key? key;

  final List<_i30.MapMarkerModel> markers;

  @override
  String toString() {
    return 'SelectLocationRouteArgs{key: $key, markers: $markers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SelectLocationRouteArgs) return false;
    return key == other.key &&
        const _i31.ListEquality<_i30.MapMarkerModel>().equals(
          markers,
          other.markers,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i31.ListEquality<_i30.MapMarkerModel>().hash(markers);
}

/// generated route for
/// [_i23.SettingsScreen]
class SettingsRoute extends _i28.PageRouteInfo<void> {
  const SettingsRoute({List<_i28.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i23.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i24.SignUpScreen]
class SignUpRoute extends _i28.PageRouteInfo<void> {
  const SignUpRoute({List<_i28.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i24.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i25.SplashScreen]
class SplashRoute extends _i28.PageRouteInfo<void> {
  const SplashRoute({List<_i28.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i25.SplashScreen();
    },
  );
}

/// generated route for
/// [_i26.SubscriptionPlansScreen]
class SubscriptionPlansRoute extends _i28.PageRouteInfo<void> {
  const SubscriptionPlansRoute({List<_i28.PageRouteInfo>? children})
    : super(SubscriptionPlansRoute.name, initialChildren: children);

  static const String name = 'SubscriptionPlansRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i26.SubscriptionPlansScreen();
    },
  );
}

/// generated route for
/// [_i27.ViewLocationScreen]
class ViewLocationRoute extends _i28.PageRouteInfo<ViewLocationRouteArgs> {
  ViewLocationRoute({
    _i29.Key? key,
    List<_i30.MapMarkerModel> markers = const [],
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ViewLocationRoute.name,
         args: ViewLocationRouteArgs(key: key, markers: markers),
         initialChildren: children,
       );

  static const String name = 'ViewLocationRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewLocationRouteArgs>(
        orElse: () => const ViewLocationRouteArgs(),
      );
      return _i27.ViewLocationScreen(key: args.key, markers: args.markers);
    },
  );
}

class ViewLocationRouteArgs {
  const ViewLocationRouteArgs({this.key, this.markers = const []});

  final _i29.Key? key;

  final List<_i30.MapMarkerModel> markers;

  @override
  String toString() {
    return 'ViewLocationRouteArgs{key: $key, markers: $markers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ViewLocationRouteArgs) return false;
    return key == other.key &&
        const _i31.ListEquality<_i30.MapMarkerModel>().equals(
          markers,
          other.markers,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i31.ListEquality<_i30.MapMarkerModel>().hash(markers);
}

import 'package:auto_route/auto_route.dart';
import 'package:gc_reminder/routing/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),

    // App
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: ReminderListRoute.page),
    // AutoRoute(page: ReminderDetailRoute.page),

    // Common
    AutoRoute(page: SelectLocationRoute.page),
    AutoRoute(page: ViewLocationRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: FilterRoute.page),
  ];
  @override
  List<AutoRouteGuard> get guards => [];
}

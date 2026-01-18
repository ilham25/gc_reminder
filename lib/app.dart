import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/utils/flavor/flavor_utils.dart';
import 'package:gc_reminder/routing/route.dart';
import 'package:gc_reminder/routing/route_observer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final appRouter = inject<AppRouter>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ScreenUtilInit(
          designSize: orientation == Orientation.portrait
              ? const Size(375, 812)
              /// Portrait design size
              : const Size(1920, 1080),

          /// Landscape design size
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return MaterialApp.router(
              routerConfig: appRouter.config(
                navigatorObservers: () => [RouterObserver()],
                deepLinkBuilder: (deepLink) {
                  if (deepLink.path.startsWith("/invoice")) {
                    /// Do something
                    return deepLink;
                  } else {
                    return DeepLink.defaultPath;
                  }
                },
              ),
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: .light,
              title: flavor.current.name,
              debugShowCheckedModeBanner: false,
              localeResolutionCallback: (locale, supportedLocales) {
                // Check if the current device locale is supported
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale?.languageCode &&
                      supportedLocale.countryCode == locale?.countryCode) {
                    return supportedLocale;
                  }
                }
                // If the locale of the device is not supported, use the first one
                return supportedLocales.first;
              },
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // FormBuilderLocalizations.delegate,
              ],
              builder: (ctx, child) {
                return MediaQuery(
                  data: MediaQuery.of(ctx).copyWith(),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: flavor.current.type == FlavorType.prod
                        ? child!
                        : Banner(
                            location: BannerLocation.topEnd,
                            message: flavor.current.type
                                .toString()
                                .split('.')
                                .last
                                .toUpperCase(),
                            child: child!,
                          ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

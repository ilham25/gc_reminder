import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_reminder/bloc/auth/auth_session_bloc.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/progress/progress_bar.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/routing/route.gr.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthSessionBloc()..checkSession()),
        ],
        child: const SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthSessionBloc, AuthSessionBlocState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loaded: (state) {
            Future.delayed(const Duration(seconds: 2)).then((value) {
              if (!context.mounted) return;

              if (state.isOnboardingCompleted) {
                context.router.replaceAll([const ReminderListRoute()]);
                return;
              }

              context.router.replaceAll([const OnboardingRoute()]);
            });
          },
        );
      },
      child: Stack(
        children: [
          Center(
            child: ZoomIn(
              delay: const Duration(milliseconds: 700),
              duration: const Duration(milliseconds: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.logoFull.image(
                    height: AppSetting.setHeight(100),
                  ),
                  Space.h(16),
                  SizedBox(
                    width: AppSetting.setWidth(100),
                    child: UIKitProgressBar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

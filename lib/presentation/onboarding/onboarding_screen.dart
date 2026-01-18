import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_reminder/bloc/onboarding/onboarding_bloc.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/presentation/onboarding/widgets/common/animated_blob.dart';
import 'package:gc_reminder/routing/route.gr.dart';
import 'package:gc_reminder/theme/theme.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => OnboardingBloc())],
      child: const OnboardingBody(),
    );
  }
}

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController pageController = PageController();
  int currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Future _onNextPressed() async {
    if (currentPage == 2) {
      context.read<OnboardingBloc>().complete();
      return;
    }

    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.color.palette.highlight.lightest,
      body: BlocListener<OnboardingBloc, OnboardingBlocState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (message) {
              UIKitToast.danger(
                context: context,
                title: "Onboarding",
                description: message,
              );
            },
            success: () {
              context.router.replaceAll([const ReminderListRoute()]);
            },
          );
        },
        child: Stack(
          children: [
            ..._blobs,
            // Apply blur
            BackdropFilter(
              filter: .blur(sigmaX: 50, sigmaY: 50),
              child: Container(color: Colors.white.withAlpha(50)),
            ),

            SafeArea(
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Expanded(
                    child: PageView(
                      controller: pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: _onPageChanged,
                      children: [
                        _Section(
                          illustration: Assets.images.illustrations.secondBrain,
                          title: Text.rich(
                            TextSpan(
                              style: MyTheme.style.body.m.copyWith(
                                fontSize: AppSetting.setFontSize(32),
                                fontWeight: .w400,
                                height: 1,
                              ),
                              children: [
                                TextSpan(text: "Your "),
                                TextSpan(
                                  text: "Second Brain",
                                  style: MyTheme.style.body.m.copyWith(
                                    fontSize: AppSetting.setFontSize(32),
                                    fontWeight: .w700,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          description:
                              "Clear your mind and let us do the remembering. From daily tasks to long-term goals, we've got you covered.",
                        ),
                        _Section(
                          illustration: Assets.images.illustrations.neverForget,
                          title: Text.rich(
                            TextSpan(
                              style: MyTheme.style.body.m.copyWith(
                                fontSize: AppSetting.setFontSize(32),
                                fontWeight: .w400,
                                height: 1,
                              ),
                              children: [
                                TextSpan(text: "Reminders that "),
                                TextSpan(
                                  text: "find you",
                                  style: MyTheme.style.body.m.copyWith(
                                    fontSize: AppSetting.setFontSize(32),
                                    fontWeight: .w700,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: .justify,
                          ),
                          description:
                              "Get notified at the right time, or the right place. Set a reminder for when you arrive at store or leave the gym.",
                        ),
                        _Section(
                          illustration:
                              Assets.images.illustrations.pushNotification,
                          title: Text.rich(
                            TextSpan(
                              style: MyTheme.style.body.m.copyWith(
                                fontSize: AppSetting.setFontSize(32),
                                fontWeight: .w400,
                                height: 1,
                              ),
                              children: [
                                TextSpan(text: "Stay in the "),
                                TextSpan(
                                  text: "loop",
                                  style: MyTheme.style.body.m.copyWith(
                                    fontSize: AppSetting.setFontSize(32),
                                    fontWeight: .w700,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: .justify,
                          ),
                          description:
                              "To remind you at the right time and place, we need your permission to send notifications and access your location.",
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    top: false,
                    child: Container(
                      padding: .only(
                        right: AppSetting.setWidth(16),
                        left: AppSetting.setWidth(8),
                        top: AppSetting.setHeight(16),
                        bottom: AppSetting.setHeight(24),
                      ),
                      child: Row(
                        mainAxisAlignment: .end,
                        children: [
                          Align(
                            alignment: .center,
                            child:
                                BlocBuilder<
                                  OnboardingBloc,
                                  OnboardingBlocState
                                >(
                                  builder: (context, state) {
                                    return UIKitIconButton(
                                      Assets.icons.arrowRight,
                                      iconSize: 12,
                                      onTap: _onNextPressed,
                                      isLoading: state.maybeWhen(
                                        orElse: () => false,
                                        loading: () => true,
                                      ),
                                    );
                                  },
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final AssetGenImage illustration;
  final Text title;
  final String description;

  const _Section({
    required this.illustration,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Expanded(child: Center(child: illustration.image())),
        Padding(
          padding: .symmetric(horizontal: AppSetting.setWidth(16)),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              title,
              Space.h(12),
              Text(
                description,
                style: MyTheme.style.body.s.copyWith(
                  color: MyTheme.color.palette.dark.medium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<Widget> _blobs = [
  AnimatedBlob(
    top: -180,
    left: -180,
    child: BackdropFilter(
      filter: .blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: AppSetting.setHeight(350),
        height: AppSetting.setHeight(350),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFFB4F0E8).withAlpha(120),
              Color(0xFFB4F0E8).withAlpha(50),
            ],
          ),
          shape: .circle,
        ),
      ),
    ),
  ),
  AnimatedBlob(
    top: 100,
    right: -200,
    duration: const Duration(seconds: 10),
    child: BackdropFilter(
      filter: .blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: AppSetting.setHeight(350),
        height: AppSetting.setHeight(350),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xFFB4F0E8), Color(0xFFB4F0E8).withAlpha(50)],
          ),
          shape: .circle,
        ),
      ),
    ),
  ),
  AnimatedBlob(
    top: 150,
    left: -200,
    duration: const Duration(seconds: 12),

    child: BackdropFilter(
      filter: .blur(sigmaX: 50, sigmaY: 50),
      child: Container(
        width: AppSetting.setHeight(500),
        height: AppSetting.setHeight(500),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              MyTheme.color.palette.highlight.light.withAlpha(200),
              MyTheme.color.palette.highlight.light.withAlpha(50),
            ],
          ),
          shape: .circle,
        ),
      ),
    ),
  ),
  AnimatedBlob(
    top: 500,
    right: -80,
    duration: const Duration(seconds: 14),

    child: BackdropFilter(
      filter: .blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: AppSetting.setHeight(280),
        height: AppSetting.setHeight(280),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              MyTheme.color.palette.highlight.light.withAlpha(120),
              MyTheme.color.palette.highlight.light.withAlpha(50),
            ],
          ),
          shape: .circle,
        ),
      ),
    ),
  ),
  AnimatedBlob(
    bottom: -100,
    left: -80,
    duration: const Duration(seconds: 16),

    child: BackdropFilter(
      filter: .blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: AppSetting.setHeight(280),
        height: AppSetting.setHeight(280),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFFB4F0E8).withAlpha(120),
              Color(0xFFB4F0E8).withAlpha(50),
            ],
          ),
          shape: .circle,
        ),
      ),
    ),
  ),
];

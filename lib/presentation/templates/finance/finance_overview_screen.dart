import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';

@RoutePage()
class FinanceOverviewScreen extends StatelessWidget {
  const FinanceOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FinanceOverviewBody();
  }
}

class FinanceOverviewBody extends StatelessWidget {
  const FinanceOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Overview",
        actions: [
          UIKitIconButton.secondary(
            Assets.icons.verticalDots,
            decoration: UIKitIconButtonDecoration(
              // iconColor: MyTheme.color.palette.dark.darkest,
            ),
          ),
        ],
      ),
    );
  }
}

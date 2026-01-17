import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gc_reminder/bloc/reminder/reminder_list/reminder_list_bloc.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/domain/permission/usecases/request_permission_usecase.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/reminder/widgets/bottom_sheet/reminder_create_bottom_sheet.dart';
import 'package:gc_reminder/presentation/reminder/widgets/content/recent_reminders.dart';
import 'package:gc_reminder/presentation/reminder/widgets/content/today_reminder_summary.dart';

@RoutePage()
class ReminderListScreen extends StatelessWidget {
  const ReminderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ReminderListBloc()..getData()),
      ],
      child: const ReminderListBody(),
    );
  }
}

class ReminderListBody extends StatefulWidget {
  const ReminderListBody({super.key});

  @override
  State<ReminderListBody> createState() => _ReminderListBodyState();
}

class _ReminderListBodyState extends State<ReminderListBody> {
  Future _onRefresh() async {
    await context.read<ReminderListBloc>().refresh();
  }

  Future<bool?> _onRequestPermission() async {
    final RequestPermissionUseCase requestPermissionUseCase =
        inject<RequestPermissionUseCase>();

    final getNotificationPermission = await requestPermissionUseCase.call(
      .notification,
    );
    if (!getNotificationPermission) {
      return null;
    }
    final getLocationPermission = await requestPermissionUseCase.call(
      .location,
    );
    if (!getLocationPermission) {
      return null;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "My Reminders"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: .symmetric(
            horizontal: AppSetting.setWidth(16),
            vertical: AppSetting.setHeight(16),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              TodayReminderSummary(),
              Space.h(16),
              RecentReminders(onRefresh: _onRefresh),
            ],
          ),
        ),
      ),
      floatingActionButton: UIKitIconButton(
        Assets.icons.add,
        iconSize: 16,
        onTap: () async {
          final requestPermission = await _onRequestPermission();
          if (requestPermission == null) return;

          final result = await ReminderCreateBottomSheet.show();
          if (result != true) return;

          _onRefresh();
        },
      ),
      floatingActionButtonLocation: .centerFloat,
    );
  }
}

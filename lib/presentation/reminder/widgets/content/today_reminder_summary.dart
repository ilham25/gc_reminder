import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/date/date_format_utils.dart';

class TodayReminderSummary extends StatelessWidget {
  const TodayReminderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: .tight,
          child: Container(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
              vertical: AppSetting.setHeight(MyTheme.defaultPadding),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  MyTheme.color.primary,
                  MyTheme.color.palette.highlight.dark,
                ],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              mainAxisSize: .min,
              children: [
                Align(
                  alignment: .centerLeft,
                  child: Container(
                    height: AppSetting.setHeight(32),
                    width: AppSetting.setHeight(32),
                    decoration: BoxDecoration(
                      color: MyTheme.color.white.withValues(alpha: 0.5),
                      borderRadius: .circular(8),
                    ),
                    child: Center(
                      child: Assets.icons.timeOutlined.image(
                        height: AppSetting.setHeight(20),
                        width: AppSetting.setWidth(20),
                        color: MyTheme.color.white,
                      ),
                    ),
                  ),
                ),
                Space.h(8),
                Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Text(
                      formatFullSort.format(DateTime.now()),
                      style: MyTheme.style.body.m.copyWith(
                        color: MyTheme.color.palette.highlight.lightest,
                      ),
                    ),
                    Text(
                      "Today",
                      style: MyTheme.style.heading.h1.copyWith(
                        color: MyTheme.color.white,
                      ),
                    ),
                  ],
                ),
                Space.h(16),
                Text(
                  "14 Reminders",
                  style: MyTheme.style.action.m.copyWith(
                    color: MyTheme.color.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Space.w(16),
        Flexible(
          fit: .tight,
          child: Column(
            crossAxisAlignment: .stretch,
            mainAxisAlignment: .spaceBetween,
            children: [
              Container(
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                ),
                decoration: BoxDecoration(
                  color: MyTheme.color.palette.light.light,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  mainAxisSize: .min,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: AppSetting.setHeight(32),
                          width: AppSetting.setHeight(32),
                          decoration: BoxDecoration(
                            color: MyTheme.color.palette.success.light,
                            borderRadius: .circular(8),
                          ),
                          child: Center(
                            child: Assets.icons.check.image(
                              height: AppSetting.setHeight(14),
                              width: AppSetting.setWidth(14),
                              color: MyTheme.color.palette.success.medium,
                            ),
                          ),
                        ),
                        Space.w(8),
                        Flexible(
                          fit: .tight,
                          child: Column(
                            crossAxisAlignment: .stretch,
                            children: [
                              Text("40", style: MyTheme.style.heading.h4),
                              Text(
                                "Completed",
                                style: MyTheme.style.action.m.copyWith(
                                  color: MyTheme.color.palette.dark.light,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Space.h(16),
              Container(
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                ),
                decoration: BoxDecoration(
                  color: MyTheme.color.palette.light.light,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  mainAxisSize: .min,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: AppSetting.setHeight(32),
                          width: AppSetting.setHeight(32),
                          decoration: BoxDecoration(
                            color: MyTheme.color.palette.error.light,
                            borderRadius: .circular(8),
                          ),
                          child: Center(
                            child: Assets.icons.timeOutlined.image(
                              height: AppSetting.setHeight(16),
                              width: AppSetting.setWidth(16),
                              color: MyTheme.color.palette.error.medium,
                            ),
                          ),
                        ),
                        Space.w(8),
                        Flexible(
                          fit: .tight,
                          child: Column(
                            crossAxisAlignment: .stretch,
                            children: [
                              Text("40", style: MyTheme.style.heading.h4),
                              Text(
                                "Ongoing",
                                style: MyTheme.style.action.m.copyWith(
                                  color: MyTheme.color.palette.dark.light,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

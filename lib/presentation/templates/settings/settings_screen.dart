import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/core/widgets/avatar/avatar.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/button/icon_button.dart';
import 'package:gc_reminder/core/widgets/content/list_item.dart';
import 'package:gc_reminder/core/widgets/dialog/dialog.dart';
import 'package:gc_reminder/core/widgets/navigation/tab_bar.dart';
import 'package:gc_reminder/core/widgets/navigation/tab_bar_item.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/theme/theme.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsBody();
  }
}

class SettingsBody extends StatelessWidget {
  SettingsBody({super.key});

  final List<UIKitListItem> _tiles = [
    UIKitListItem(title: "Saved Messages", description: "", onTap: () {}),
    UIKitListItem(title: "Recent Calls", onTap: () {}),
    UIKitListItem(title: "Devices", onTap: () {}),
    UIKitListItem(title: "Notifications", onTap: () {}),
    UIKitListItem(title: "Appearance", onTap: () {}),
    UIKitListItem(title: "Language", onTap: () {}),
    UIKitListItem(title: "Privacy & Security", onTap: () {}),
    UIKitListItem(title: "Storage", onTap: () {}),
    UIKitListItem(
      title: "Log Out",
      onTap: () {
        UIKitDialog.show(
          title: "Log out",
          description:
              "Are you sure you want to log out? You'll need to login again to use the app.",
          actions: [
            UIKitButton.secondary(title: "Cancel", onTap: () {}),
            UIKitButton(
              title: "Log out",
              leftIcon: Assets.icons.placeholder,
              onTap: () {},
            ),
          ],
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Settings", automaticallyImplyLeading: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Padding(
                padding: .symmetric(vertical: AppSetting.setHeight(8)),
                child: Column(
                  crossAxisAlignment: .center,
                  children: [
                    Stack(
                      children: [
                        UIKitAvatar.large(),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: UIKitIconButton(
                            Assets.icons.edit,
                            size: 24,
                            iconSize: 10,
                            decoration: UIKitIconButtonDecoration(
                              borderRadius: .circular(24),
                            ),
                            onTap: () {
                              UIKitToast.info(
                                context: context,
                                title: "Edit Profile",
                                description: "Edit Profile Tapped!",
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Space.h(16),
                    Text("Lucas Scott", style: MyTheme.style.heading.h3),
                    Space.h(4),
                    Text(
                      "@lucasscott3",
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) => Space.h(0),
                itemCount: _tiles.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(16),
                  vertical: AppSetting.setHeight(24),
                ),
                itemBuilder: (context, index) => _tiles[index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: UIKitTabBar(
        currentIndex: 2,
        onTap: (index) {
          //
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.chat, title: "Chats"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Friends"),
          UIKitTabBarItem(icon: Assets.icons.settings, title: "Settings"),
        ],
      ),
    );
  }
}

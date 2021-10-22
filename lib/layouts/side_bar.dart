import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/models/menu_item.dart';
import 'package:flutter_desktop_notes/providers/app_controller.dart';
import 'package:flutter_desktop_notes/widgets/side_bar_menu_item.dart';
import 'package:flutter_desktop_notes/widgets/workspace_item.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:get/get.dart';

import '../constants.dart';

List<MenuItem> topMenuItems = [
  MenuItem(
    null,
    "Search",
    AntDesign.search1,
  ),
  MenuItem(
    null,
    "Dashboard",
    AntDesign.home,
  ),
  MenuItem(
    null,
    "Chat",
    AntDesign.message1,
  ),
  MenuItem(
    null,
    "Teams",
    AntDesign.team,
  ),
  MenuItem(null, "Tasks", AntDesign.tool),
  MenuItem(
    null,
    "Game",
    AntDesign.mobile1,
  ),
  MenuItem(
    null,
    "Notes",
    AntDesign.book,
  ),
  MenuItem(
    null,
    "Administration",
    AntDesign.setting,
  ),
];

List<MenuItem> bottomMenuItems = [
  MenuItem(
    null,
    "Notifications",
    Entypo.bell,
  ),
  MenuItem(
    "me.jpg",
    "Profile",
    null,
  )
];

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());

    final Size _size = MediaQuery.of(context).size;
    bool _isDesktop = _size.width >= screenLg;

    return GetBuilder<AppController>(
        init: controller,
        builder: (logic) {
          _isDesktop = controller.isDesktop;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: _isDesktop ? sideBarDesktopWidth : sideBarMobileWidth,
            height: _size.height,
            decoration: BoxDecoration(
              color: secondaryBackgroundColor,
              border: Border(
                right: BorderSide(
                  width: .3,
                  color: darkColor.withOpacity(.2),
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: _isDesktop ? 24 : 12,
            ),
            child: Column(
              crossAxisAlignment: _isDesktop
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //top item
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: .3,
                        color: darkColor.withOpacity(.2),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment:
                            _isDesktop ? Alignment.topRight : Alignment.center,
                        child: IconButton(
                          onPressed: () {
                            controller.toggleSideBar();
                          },
                          icon: const Icon(
                            AntDesign.leftsquareo,
                            color: textColor,
                            size: 18,
                          ),
                        ),
                      ),
                      WorkspaceItem(
                        isDesktop: _isDesktop,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ...topMenuItems
                    .map((e) => SideBarMenuItem(e, _isDesktop))
                    .toList(),

                const Spacer(),
                ...bottomMenuItems
                    .map((e) => SideBarMenuItem(e, _isDesktop))
                    .toList(),
              ],
            ),
          );
        });
  }
}

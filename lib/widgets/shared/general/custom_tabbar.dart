import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar(
      {super.key,
      required this.tabs,
      required this.onTap,
      required this.tabController});

  final List<Widget> tabs;
  final Function(int index) onTap;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);
    return Material(
      color: isDarkMode ? ThemeColors.darkerGrey : Colors.white,
      child: TabBar(
        tabs: tabs,
        onTap: onTap,
        controller: tabController,
        isScrollable: true,
        indicatorColor: ThemeColors.primary,
        labelColor: isDarkMode ? ThemeColors.white : ThemeColors.black,
        unselectedLabelColor: ThemeColors.grey,
        tabAlignment: TabAlignment.start,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}

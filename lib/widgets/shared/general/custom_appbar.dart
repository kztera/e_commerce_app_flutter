import "package:zzz_book_store/utils/constants/sizes.dart";
import "package:zzz_book_store/utils/devices/device_utility.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:zzz_book_store/utils/helpers/helper_function.dart";

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.leadingIcon,
    this.actions,
    this.onLeadingPressed,
    this.bgColor,
  });

  final Widget? title;
  final bool showBackButton;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunc.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CustomSizes.xs * 3,
      ),
      child: AppBar(
        backgroundColor: bgColor ?? (isDarkMode ? Theme.of(context).scaffoldBackgroundColor : Colors.transparent),
        title: title,
        actions: actions,
        automaticallyImplyLeading: false,
        leading: showBackButton
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isDarkMode ? Theme.of(context).iconTheme.color : Theme.of(context).iconTheme.color,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: onLeadingPressed,
                    icon: Icon(leadingIcon),
                    color: isDarkMode ? Theme.of(context).iconTheme.color : Theme.of(context).iconTheme.color,
                  )
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:zzz_book_store/controllers/main_controller.dart";
import "package:zzz_book_store/utils/constants/colors.dart";

class UserProjectTile extends GetView<MainController> {
  const UserProjectTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 24,
        child: Text(
          controller.user.name[0].toUpperCase(),
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: ThemeColors.white),
        ),
      ),
      title: Text(
        controller.user.name,
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: ThemeColors.white),
      ),
      subtitle: Text(
        "Người dùng",
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: ThemeColors.white.withOpacity(0.8),
            ),
      ),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit),
        color: ThemeColors.white,
        onPressed: onPressed,
      ),
    );
  }
}

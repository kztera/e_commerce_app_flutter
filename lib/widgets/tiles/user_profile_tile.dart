import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:zzz_book_store/utils/constants/colors.dart";
import "package:zzz_book_store/utils/constants/image_strings.dart";
import "package:zzz_book_store/widgets/shared/images/circular_image.dart";

class UserProjectTile extends StatelessWidget {
  const UserProjectTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: Images.author1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Lưu Từ Hân",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: ThemeColors.white),
      ),
      subtitle: Text(
        "Tác giả Tam thể",
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

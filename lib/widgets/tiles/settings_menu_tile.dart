import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle = '',
    this.trailing = '',
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final String? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: ThemeColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: subtitle != ''
          ? Text(
              subtitle!,
              style: Theme.of(context).textTheme.labelMedium,
            )
          : null,
      trailing: trailing != ''
          ? SizedBox(
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    trailing!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            )
          : null,
      onTap: onTap,
    );
  }
}

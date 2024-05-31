import 'package:flutter/material.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor = ThemeColors.black,
    this.onPressed,
    this.buttonTitle = '',
    required this.title,
    this.showButtonAction = true,
  });

  final Color? textColor;
  final bool showButtonAction;
  final String title;
  final String buttonTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showButtonAction
            ? TextButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  overlayColor: WidgetStateColor.resolveWith((states) => Colors.transparent),
                ),
                child: Text(
                  buttonTitle != '' ? buttonTitle : '',
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

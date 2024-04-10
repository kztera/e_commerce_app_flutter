import "package:zzz_book_store/utils/constants/colors.dart";
import "package:flutter/material.dart";

class CircleDecoration extends StatelessWidget {
  const CircleDecoration({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 200,
    this.padding = 0,
    this.margin,
    this.bgColor = ThemeColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgColor,
      ),
    );
  }
}

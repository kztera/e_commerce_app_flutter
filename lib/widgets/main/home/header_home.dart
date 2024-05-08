import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/widgets/main/home/circle_decoration.dart';
import 'package:zzz_book_store/widgets/main/home/curved_edge_widget.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: ThemeColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: HelperFunc.screenHeight() * 0.2,
              left: -HelperFunc.screenWidth() * 0.5,
              child: CircleDecoration(
                bgColor: ThemeColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: -HelperFunc.screenHeight() * 0.2,
              right: -HelperFunc.screenWidth() * 0.5,
              child: CircleDecoration(
                bgColor: ThemeColors.white.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}

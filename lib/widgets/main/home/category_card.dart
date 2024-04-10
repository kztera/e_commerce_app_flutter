import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final dynamic category;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      beginDuration: const Duration(milliseconds: 300),
      endDuration: const Duration(milliseconds: 500),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            const SizedBox(
              width: 120,
              height: 60,
              child: Image(
                image: AssetImage(Images.bn1),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(110),
                ),
                child: Center(
                  child: Text(
                    "Thể loại",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                          color: ThemeColors.white,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

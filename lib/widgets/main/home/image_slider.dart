import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/image_strings.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:zzz_book_store/utils/devices/device_utility.dart';
import 'package:zzz_book_store/widgets/main/home/circle_decoration.dart';
import 'package:zzz_book_store/widgets/shared/rounded_image.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                pageSnapping: true,
                viewportFraction: 1,
                animateToClosest: false,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {
                  controller.changeCarouselIndex(index);
                },
              ),
              items: const [
                RoundedImage(
                  imageUrl: Images.bn1,
                  isNetworkImage: false,
                ),
                RoundedImage(
                  imageUrl: Images.bn2,
                  isNetworkImage: false,
                ),
                RoundedImage(
                  imageUrl: Images.bn3,
                  isNetworkImage: false,
                ),
              ],
            ),
            Obx(
              () => Container(
                margin: EdgeInsets.only(top: DeviceUtils.getScreenHeight() * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      CircleDecoration(
                        width: 20,
                        height: 4,
                        margin: const EdgeInsets.only(right: 10),
                        bgColor: controller.carouselCurrentIndex.value == i ? ThemeColors.secondary : ThemeColors.grey,
                      )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
      ],
    );
  }
}

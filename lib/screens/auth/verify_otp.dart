import 'package:e_commerce_app_flutter_app/utils/constants/colors.dart';
import 'package:e_commerce_app_flutter_app/utils/constants/sizes.dart';
import 'package:e_commerce_app_flutter_app/utils/devices/device_utility.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Nhập mã xác thực', style: Theme.of(context).textTheme.headlineMedium),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(CustomSizes.defaultSpace * 2),
                  child: Text(
                    'Một mã gồm 4 chữ số đã được gửi về email example@gmail.com của bạn',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwSections * 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: CustomSizes.iconLg * 2,
                        width: CustomSizes.iconLg * 2,
                        child: TextFormField(
                          onChanged: (value) {},
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: CustomSizes.iconLg * 2,
                        width: CustomSizes.iconLg * 2,
                        child: TextFormField(
                          onChanged: (value) {},
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: CustomSizes.iconLg * 2,
                        width: CustomSizes.iconLg * 2,
                        child: TextFormField(
                          onChanged: (value) {},
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: CustomSizes.iconLg * 2,
                        width: CustomSizes.iconLg * 2,
                        child: TextFormField(
                          onChanged: (value) {},
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwSections * 4,
                ),
                Column(
                  children: [
                    _countDownTimer(),
                    const SizedBox(height: CustomSizes.defaultSpace * 2),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Không nhận được mã OTP?',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: ' Gửi lại',
                            style: Theme.of(context).textTheme.labelMedium,
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }

  TweenAnimationBuilder<num> _countDownTimer() {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30.0, end: 0),
      duration: const Duration(seconds: 30),
      builder: (context, value, child) => Container(
        width: DeviceUtils.getScreenWidth(context) * 0.2,
        padding: const EdgeInsets.all(CustomSizes.xs),
        decoration: const BoxDecoration(
          color: ThemeColors.grey,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(100),
            right: Radius.circular(100),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.alarm_sharp),
            const SizedBox(
              width: CustomSizes.xs,
            ),
            Text(
              '00:${value.toInt().toString().padLeft(2, '0')}',
            ),
          ],
        ),
      ),
    );
  }
}

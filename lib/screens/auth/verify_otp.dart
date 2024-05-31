import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/forgot_controller.dart';
import 'package:zzz_book_store/i18n/translations.g.dart';
import 'package:zzz_book_store/utils/constants/colors.dart';
import 'package:zzz_book_store/utils/constants/sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VerifyOTPScreen extends GetView<ForgotController> {
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(t.screens.forgotPassword.text.otpInput, style: Theme.of(context).textTheme.headlineMedium),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace * 2),
                child: Text(
                  t.messages.otpSent,
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
                    children: List.generate(4, (index) => _buildOTPBox(context, index))),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections * 4,
              ),
              Column(
                children: [
                  _countDownTimer(context),
                  const SizedBox(height: CustomSizes.defaultSpace * 2),
                  Obx(
                    () => RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: t.screens.forgotPassword.text.notReceived,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: ' ${t.screens.forgotPassword.text.resend}',
                            style: controller.countdown.value == 0
                                ? Theme.of(context).textTheme.labelMedium!.apply(color: ThemeColors.primary)
                                : Theme.of(context).textTheme.labelMedium,
                            recognizer: TapGestureRecognizer()..onTap = controller.onResendOTP,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  SizedBox _buildOTPBox(BuildContext context, int index) {
    return SizedBox(
      height: CustomSizes.iconLg * 2,
      width: CustomSizes.iconLg * 2,
      child: TextFormField(
          controller: controller.textControllers[index],
          focusNode: controller.focusNodes[index],
          onChanged: (value) => controller.onChanged(index, value),
          style: Theme.of(context).textTheme.headlineSmall,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ]),
    );
  }

  Widget _countDownTimer(BuildContext context) {
    return Center(
      child: Obx(() {
        return Container(
          width: MediaQuery.of(context).size.width * 0.3,
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Colors.grey,
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
                width: 8.0,
              ),
              Text(
                '00:${controller.countdown.value.toString().padLeft(2, '0')}',
              ),
            ],
          ),
        );
      }),
    );
  }
}

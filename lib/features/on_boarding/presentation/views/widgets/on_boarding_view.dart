import 'package:dalel_ramadan/core/utils/app_text_style.dart';
import 'package:dalel_ramadan/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import 'custom_nav_bar.dart';
import 'onBoarding_widgets_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
              children: [
            const SizedBox(
              height: 40,
            ),
            const CustomNavBar(),
            onBoardingWidgetBody(),
            const SizedBox(height: 88),
            const CustomBtn(
              text: AppStrings.next,
            ),
            const SizedBox(
              height: 17,
            )
          ]),
        ),
      ),
    );
  }
}

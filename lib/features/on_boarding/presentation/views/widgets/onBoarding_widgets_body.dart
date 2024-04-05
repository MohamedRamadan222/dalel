import 'package:dalel_ramadan/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_indicator.dart';

// ignore: camel_case_types
class onBoardingWidgetBody extends StatelessWidget {
  onBoardingWidgetBody({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Image.asset(Assets.onBoarding1),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageInd(controller: _controller),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Explore The history with Dale in a smart way',
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Using our app’s history libraries you can find many historical periods ',
                textAlign: TextAlign.center,
              ),
            ]);
          }),
    );
  }
}

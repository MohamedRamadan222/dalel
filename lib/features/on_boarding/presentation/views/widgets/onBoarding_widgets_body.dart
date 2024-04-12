import 'package:dalel_ramadan/core/utils/app_text_style.dart';
import 'package:dalel_ramadan/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'custom_smooth_page_indicator.dart';

// ignore: camel_case_types
class onBoardingWidgetBody extends StatelessWidget {
  const onBoardingWidgetBody({super.key, required this.controller, this.onPageChanged});
  final Function(int)? onPageChanged;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: PageView.builder(
        onPageChanged: onPageChanged ,
          controller: controller,
          physics: const BouncingScrollPhysics(),
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Container(
                width: 290,
                height: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imagePath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageInd(controller: controller),
              const SizedBox(
                height: 32,
              ),
              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onBoardingData[index].subTitle,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ]);
          }),
    );
  }
}

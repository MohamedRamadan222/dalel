import 'package:dalel_ramadan/core/utils/app_strings.dart';
import 'package:dalel_ramadan/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'Widgets/custom_text_field.dart';
import 'Widgets/have_An_account_widget.dart';
import 'Widgets/terms_and_condition.dart';
import 'Widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(
                child: CustomTextField(
              labelText: AppStrings.firstName,
            )),
            const SliverToBoxAdapter(
                child: CustomTextField(
              labelText: AppStrings.lastName,
            )),
            const SliverToBoxAdapter(
                child: CustomTextField(
              labelText: AppStrings.emailAddress,
            )),
            const SliverToBoxAdapter(
                child: CustomTextField(
              labelText: AppStrings.password,
            )),
            const SliverToBoxAdapter(
              child: TermsAndConditionWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 88,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomBtn(onPressed: () {}, text: AppStrings.signUp),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
                child: HaveAnAccountWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
            )),
          ],
        ),
      ),
    );
  }
}

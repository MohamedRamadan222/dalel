import 'package:dalel_ramadan/core/routes/app_router.dart';
import 'package:dalel_ramadan/core/utils/app_assets.dart';
import 'package:dalel_ramadan/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.ofWhite
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}



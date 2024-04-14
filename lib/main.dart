import 'package:dalel_ramadan/core/database/cache/cache_helper.dart';
import 'package:dalel_ramadan/core/routes/app_router.dart';
import 'package:dalel_ramadan/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/services/service_locator.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
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



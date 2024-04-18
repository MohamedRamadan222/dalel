import 'package:dalel_ramadan/features/outh/presentation/Views/sign_up.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/widgets/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/signUp",
      builder: (context, state) => const SignUpView(),
    ),
  ],
);

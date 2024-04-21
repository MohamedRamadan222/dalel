import 'package:dalel_ramadan/features/outh/presentation/Views/sign_up_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/widgets/on_boarding_view.dart';
import '../../features/outh/presentation/Views/sign_in_view.dart';
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
      builder: (context, state) => BlocProvider(child: const SignUpView()),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => const SignInView(),
    ),
  ],
);

import 'package:go_router/go_router.dart';
import 'package:sneakerx/features/onboarding/presentation/pages/onboarding_page.dart';

import '../../features/splash/presentation/pages/splash_page.dart';

final appRouter = GoRouter(routes: 
  [
    //GoRoute(path: '/', builder: (context, state) => const SplashPage()),

    GoRoute(path: '/', builder: (context, state) => const OnboardingPage())
  ],
);
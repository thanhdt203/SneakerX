import 'package:go_router/go_router.dart';
import 'package:sneakerx/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:sneakerx/features/auth/presentation/pages/login_page.dart';

final appRouter = GoRouter(routes: 
  [
    //GoRoute(path: '/', builder: (context, state) => const SplashPage()),

    GoRoute(path: '/', builder: (context, state) => const LoginPage())
  ],
);
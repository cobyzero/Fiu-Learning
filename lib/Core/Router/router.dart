import 'package:fuilearning/Features/Auth/Presentation/Screens/register_screen.dart';
import 'package:fuilearning/Features/Onboarding/Presentation/Screens/onboarding_screen.dart';
import 'package:fuilearning/Features/Splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);

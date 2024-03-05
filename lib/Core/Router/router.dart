import 'package:fuilearning/Features/Auth/Presentation/Screens/login_screen.dart';
import 'package:fuilearning/Features/Auth/Presentation/Screens/register_screen.dart';
import 'package:fuilearning/Features/Home/Presentation/Screens/main_screen.dart';
import 'package:fuilearning/Features/Onboarding/Presentation/Screens/onboarding_screen.dart';
import 'package:fuilearning/Features/Splash/splash_screen.dart';
import 'package:fuilearning/Features/Welcome/welcome_screen.dart';
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
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/welcome",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/main",
      builder: (context, state) => MainScreen(),
    ),
  ],
);

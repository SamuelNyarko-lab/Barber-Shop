import 'package:barbershop/screens/authentication/loginscreen.dart';
import 'package:barbershop/screens/authentication/signupscreen.dart';
import 'package:barbershop/screens/onboarding/fourthonboardingscreen.dart';
import 'package:barbershop/screens/onboarding/secondonboardingscreen.dart';
import 'package:barbershop/screens/onboarding/thirdonboardingscreen.dart';
import 'package:barbershop/screens/splashscreen.dart';
import 'package:flutter/material.dart';

import '../screens/onboarding/firstonboardingscreen.dart';

class RouteManager {
  static const splash = '/';
  static const firstonboarding = 'firstonboarding';
  static const secondonboarding = 'secondonboarding';
  static const thirdonboarding = 'thirdonboarding';
  static const fourthonboarding = 'fourthonboarding';
  static const signup = 'signup';
  static const login = 'login';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case firstonboarding:
        return MaterialPageRoute(
            builder: (context) => const FirstOnboardingScreen());
      case secondonboarding:
        return MaterialPageRoute(
            builder: (context) => const SecondOnboardingScreen());
      case thirdonboarding:
        return MaterialPageRoute(
            builder: (context) => const ThirdOnboardingScreen());
      case fourthonboarding:
        return MaterialPageRoute(
            builder: (context) => const FourthOnboardingScreen());
      case signup:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        throw const FormatException('Page not found');
    }
  }
}

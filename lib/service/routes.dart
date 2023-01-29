
import 'package:barbershop/screens/onboarding/onboardingscreen.dart';
import 'package:barbershop/screens/splashscreen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const splash = '/';
  static const onboarding = 'onboarding';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());

      default:
        throw const FormatException('Page nto found');
    }
  }
}

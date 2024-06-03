import 'package:flutter/material.dart';
import 'package:krushisaathi/features/auth/screens/create_account.dart';
import 'package:krushisaathi/features/auth/screens/login.dart';
import 'package:krushisaathi/features/home/screens/home_screen.dart';
import 'package:krushisaathi/features/news/screens/news_screen.dart';
import 'package:krushisaathi/features/sample_reg/screens/registration_succes_screen.dart';
import 'package:krushisaathi/features/sample_reg/screens/sample_reg_form.dart';
import 'package:krushisaathi/features/sample_steps/screens/how_to_take_sample.dart';
import 'package:krushisaathi/features/soil_testing/screens/single_area_soil_data.dart';
import 'package:krushisaathi/features/soil_testing/screens/smart_recommedation.dart';
import 'package:krushisaathi/features/soil_testing/screens/soil_testing.dart';
import 'package:krushisaathi/languge_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case CreateAccount.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const CreateAccount());

    case LoginScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const LoginScreen());

    case LanguageScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const LanguageScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());
    case SoilTestingOverView.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SoilTestingOverView());
    case NewsScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const NewsScreen());
    case HowToTakeSample.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HowToTakeSample());

    case SingleAreaSoilData.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SingleAreaSoilData());
    case SmartRecommendation.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SmartRecommendation());
    case SampleRegistration.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SampleRegistration());
    case RegistrationSuccess.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const RegistrationSuccess());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Screen does not exist'),
                ),
              ));
  }
}

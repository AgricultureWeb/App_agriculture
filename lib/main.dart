import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_themes.dart'; // Import your text theme
import 'package:krushisaathi/features/auth/screens/create_account.dart';
import 'package:krushisaathi/features/auth/screens/login.dart';
import 'package:krushisaathi/features/news/screens/news_screen.dart';
import 'package:krushisaathi/features/soil_testing/screens/single_area_soil_data.dart';
import 'package:krushisaathi/features/soil_testing/screens/smart_recommedation.dart';
import 'package:krushisaathi/features/soil_testing/screens/soil_testing.dart';

void main() {
  runApp(const KrushiSaathi());
}

class KrushiSaathi extends StatelessWidget {
  const KrushiSaathi({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'KrushiSaathi',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: AppColors.primaryColor,
          primaryContainer: AppColors.primaryLightColor,
          secondary: AppColors.accentColor,
          secondaryContainer: AppColors.primaryDarkColor,
          surface: AppColors.surfaceColor,
          background: AppColors.backgroundColor,
          error: AppColors.errorColor,
          onPrimary: AppColors.textLightGreen,
          onSecondary: AppColors.textDarkGreen,
          onSurface: AppColors.textColor,
          onBackground: AppColors.textSecondaryColor,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: AppTextThemes.textTheme,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  SmartRecommendation(),
    );
  }
}

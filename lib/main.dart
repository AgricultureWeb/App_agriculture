import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_themes.dart'; // Import your text theme
import 'package:krushisaathi/features/sample_steps/screens/how_to_take_sample.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//  if (InAppWebView.platform == null) {
//     InAppWebView.platform = SurfaceAndroidWebView();
//   }
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
      home:  const HowToTakeSample(),
    );
  }
}

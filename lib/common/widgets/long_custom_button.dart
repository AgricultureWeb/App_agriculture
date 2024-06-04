import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/soil_testing/screens/smart_recommedation.dart';

import '../../constants/colors.dart';

class LongCustomButton extends StatelessWidget {
  const LongCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
      onPressed: () {
        Navigator.pushNamed(context, SmartRecommendation.routeName);
      },
      child: Text(
        'View Smart Recommendations',
        style: AppTextStyles.buttonText
            .copyWith(fontWeight: FontWeight.w500, fontSize: 4*SizeConfig.blockSizeHorizontal),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/text_styles.dart';

import '../../constants/colors.dart';

class LongCustomButton extends StatelessWidget {
  const LongCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
      onPressed: () {},
      child: Text(
        'View Smart Recommendations',
        style: AppTextStyles.buttonText
            .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}

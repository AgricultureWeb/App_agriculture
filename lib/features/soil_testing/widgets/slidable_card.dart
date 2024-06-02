import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/text_styles.dart';

import '../../../constants/size_config.dart';
import 'progress_indicator.dart';

class SlidableCard extends StatelessWidget {
  const SlidableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color:  const Color.fromARGB(255, 190, 209, 192),
      child: SizedBox(
        height: 50 * SizeConfig.blockSizeHorizontal,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '1 of 5 yard (Yard 1)',
              style: AppTextStyles.bodyText1.copyWith(
                color: AppColors.textLightGreen,
              ),
            ),
            const Text('St10051'),
            const CustomProgressIndicator(
              progress: 1, // Adjust progress value between 0.0 and 1.0
              tasks: ['Task 1', 'Task 2', 'Task 3', 'Task 4'], // List of tasks
            ),
            Text(
              '5 Hours Remaining',
              style: AppTextStyles.buttonText.copyWith(
                color: AppColors.textLightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants/text_styles.dart';

class NutrientLegend extends StatelessWidget {
  final Color color;
  final String text;

  const NutrientLegend({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text, style: AppTextStyles.bodyText2),
        const SizedBox(width: 8),
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';

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
        Text(text, style: AppTextStyles.bodyText2.copyWith(fontSize: 3*SizeConfig.blockSizeHorizontal)),
        const SizedBox(width: 8),
        Container(
          width: 2.8*SizeConfig.blockSizeHorizontal,
          height: 2.8*SizeConfig.blockSizeHorizontal,
          color: color,
        ),
      ],
    );
  }
}

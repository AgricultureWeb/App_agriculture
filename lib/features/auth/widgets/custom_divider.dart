import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/text_styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            endIndent: 12,
            indent: 4,
            color: Colors.grey,
          ),
        ),
        Text(
          'or',
          style: AppTextStyles.subtitle1,
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            indent: 12,
            endIndent: 4,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

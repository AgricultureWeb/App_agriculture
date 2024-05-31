// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CustomCheckBox extends StatelessWidget {
  final bool termsCheck;
  final ValueChanged<bool?> onSuccess;

  const CustomCheckBox({
    super.key,
    required this.termsCheck,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: AppColors.primaryColor,
            fillColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue; // Color when the checkbox is pressed
              } else if (states.contains(MaterialState.hovered)) {
                return AppColors
                    .primaryDarkColor; // Color when the checkbox is hovered
              } else if (states.contains(MaterialState.focused)) {
                return AppColors
                    .primaryColor; // Color when the checkbox is focused
              } else if (states.contains(MaterialState.selected)) {
                return AppColors
                    .cardGrey; // Color when the checkbox is selected
              }
              return AppColors.cardGrey; // Default fill color
            }),
            side: MaterialStateBorderSide.resolveWith(
                (Set<MaterialState> states) {
              return const BorderSide(
                  color: AppColors.textFieldGreen, width: 1.8);
            }),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: const BorderSide(
                  width: 2), // This does not affect the checkbox border
            ),
            value: termsCheck,
            onChanged: onSuccess),
        const Text('Accept all Terms and conditions'),
      ],
    );
  }
}

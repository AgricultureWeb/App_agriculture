import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/global_variables.dart';
import 'package:krushisaathi/constants/text_styles.dart';

class UserTypeSelector extends StatelessWidget {
  final UserType selectedUserType;
  final ValueChanged<UserType?> onChanged;

  const UserTypeSelector({
    super.key,
    required this.selectedUserType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Radio<UserType>(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return AppColors.primaryColor;
                    }
                    return AppColors.primaryColor;
                  },
                ),
                value: UserType.farmer,
                groupValue: selectedUserType,
                onChanged: onChanged,
              ),
              Text(
                'Farmer',
                style: AppTextStyles.bodyText1
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              Radio<UserType>(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return AppColors.primaryColor;
                    }
                    return AppColors.primaryColor;
                  },
                ),
                value: UserType.soilAgent,
                groupValue: selectedUserType,
                onChanged: onChanged,
              ),
              Text(
                'Soil Agent',
                style: AppTextStyles.bodyText1
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

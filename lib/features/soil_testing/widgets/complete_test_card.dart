import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size_config.dart';
import '../../../constants/text_styles.dart';

class CompletedTestCard extends StatelessWidget {
  final String area;
  const CompletedTestCard({super.key, required this.area});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 209, 192),
      shadowColor: null,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
        height: 15 * SizeConfig.blockSizeHorizontal,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  area,
                  style: AppTextStyles.bodyText1.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'ST10011',
                  style: AppTextStyles.bodyText2
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'June 1, 2024',
              style: AppTextStyles.bodyText1
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            GestureDetector(
                onTap: () {},
                child: const Icon(size: 18, Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}

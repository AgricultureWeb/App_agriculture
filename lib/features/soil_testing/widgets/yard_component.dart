import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krushisaathi/common/widgets/long_custom_button.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/soil_testing/widgets/complete_test_card.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class YardComponent extends StatelessWidget {
  const YardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120 * SizeConfig.blockSizeHorizontal,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
        child: Column(
          children: [
            Text(
              'Yard 1',
              style: AppTextStyles.bodyText1.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor),
            ),
            const CompletedTestCard(
              area: 'Top Left Corner',
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal,
            ),
            const CompletedTestCard(
              area: 'Bottom Left Corner',
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal,
            ),
            const CompletedTestCard(area: 'Top Right Corner'),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal,
            ),
            const CompletedTestCard(area: 'Bottom Left Corner'),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal,
            ),
            const CompletedTestCard(area: 'Center Area'),
            SizedBox(
              height: 4 * SizeConfig.blockSizeHorizontal,
            ),
            const LongCustomButton(),
          ],
        ),
      ),
    );
  }
}

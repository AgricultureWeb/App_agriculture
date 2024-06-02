import 'package:flutter/material.dart';

import '../../constants/size_config.dart';
import '../../constants/text_styles.dart';

class GovtLocCard extends StatelessWidget {
  const GovtLocCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Testing Laboratory (EP&M) Rourkela , Odisha',
              maxLines: 2,
              style: AppTextStyles.headline3,
            ),
            SizedBox(
              height: 2 * SizeConfig.blockSizeHorizontal,
            ),
            const Text(
              'Address: Basanti Nagar, Rourkela, Odisha 769004',
              maxLines: 2,
            ),
            const Text(
              'Phone no.-4342312131',
              style: AppTextStyles.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size_config.dart';
import '../../../constants/text_styles.dart';

class FeaturesCard extends StatelessWidget {
 final String text;
 final String imagePath;
  const FeaturesCard({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 40 * SizeConfig.blockSizeHorizontal,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  imagePath),
            )),
        child: Text(
          text,
          style: AppTextStyles.headline1
              .copyWith(color: AppColors.backgroundColor),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}

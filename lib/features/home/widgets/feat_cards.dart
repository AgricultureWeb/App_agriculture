import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/size_config.dart';
import '../../../constants/text_styles.dart';

class FeaturesCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final String routeName;
  const FeaturesCard(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        child: Container(
          height: 40 * SizeConfig.blockSizeHorizontal,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagePath),
              )),
          alignment: Alignment.center,
          child: Padding(
            padding:  EdgeInsets.all(6*SizeConfig.blockSizeHorizontal),
            child: Text(
              text,
              style: AppTextStyles.headline1
                  .copyWith(color: AppColors.backgroundColor),
            ),
          ),
        ),
      ),
    );
  }
}

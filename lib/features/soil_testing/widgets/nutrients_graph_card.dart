import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/global_variables.dart';
import 'package:krushisaathi/features/soil_testing/widgets/graphs_nutrients.dart';
import '../../../constants/colors.dart';
import '../../../constants/size_config.dart';
import '../../../constants/text_styles.dart';

class NutrientsGraphCard extends StatelessWidget {
  final String cardName;
  final String date;
  final List<int> yAxisForNutrients;
  const NutrientsGraphCard(
      {super.key,
      required this.cardName,
      required this.date,
      required this.yAxisForNutrients});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 209, 192),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(cardName,
                style: AppTextStyles.bodyText1
                    .copyWith(color: AppColors.primaryColor)),
            SizedBox(height: 4 * SizeConfig.blockSizeHorizontal),
            Text(date,
                style: AppTextStyles.bodyText2.copyWith(color: Colors.black)),
            SizedBox(height: 4 * SizeConfig.blockSizeHorizontal),
            SizedBox(
              height: 40 *
                  SizeConfig.blockSizeHorizontal, // Adjust height as needed
              child: NutrientsGraph(
                yAxis: yAxisForNutrients,
              ),
            ),
            const SizedBox(height: 3),
            const Text('Nutrients', style: AppTextStyles.bodyText1),
            const SizedBox(height: 3),
            Wrap(
              spacing: 8.0, // horizontal spacing
              runSpacing: 4.0, // vertical spacing
              children: GlobalVariables.nutrientsList.map((nutrient) {
                return Padding(
                  padding:
                      const EdgeInsets.all(4.0), // Adjust padding as needed
                  child: nutrient,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

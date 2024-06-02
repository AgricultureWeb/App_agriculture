import 'dart:math';

import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/long_custom_button.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/soil_testing/widgets/data_table_card.dart';
import 'package:krushisaathi/features/soil_testing/widgets/nutrients_graph_card.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class SingleAreaSoilData extends StatelessWidget {
  const SingleAreaSoilData({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();

    final nutrients = [
      'Nitrogen (N)',
      'Phosphorus (P)',
      'Potassium (K)',
      'Sulfur (S)',
      'Zinc (Zn)',
      'Iron (Fe)',
      'Copper (Cu)',
      'Manganese (Mn)',
      'Boron (Bo)',
      'pH',
      'EC',
      'Organic Carbon (OC)',
    ];

    final results = List.generate(
        12, (_) => (random.nextDouble() * 2 + 1).toStringAsFixed(2));
    final optimalResults = List.generate(12, (_) => ('1-7'));
    final ratings =
        List.generate(12, (_) => random.nextBool() ? 'High' : 'Low');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'Soil Testing',
          style: AppTextStyles.headline2,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: NutrientsGraphCard(
                cardName: 'Top Left Corner - ST10011',
                date: 'June 1, 2024',
                yAxisForNutrients: [3, 1, 2, 4, 2, 3, 1, 2, 3, 3, 2, 1],
              ),
            ),
            SizedBox(
              height: 4 * SizeConfig.blockSizeHorizontal,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Raw Soil Data',
                style: AppTextStyles.headline3,
              ),
            ),
            const Divider(),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: DataTableCard(
                    nutrients: nutrients,
                    results: results,
                    optimalResults: optimalResults,
                    ratings: ratings)),
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: LongCustomButton(),
            ),
          ],
        ),
      ),
    );
  }
}

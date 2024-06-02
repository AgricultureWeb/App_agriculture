import 'package:flutter/material.dart';
import 'package:krushisaathi/models/farm_sample_data.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class RegisterSuccessCard extends StatelessWidget {
  final String farmName;
  final List<Sample> samples;
  const RegisterSuccessCard(
      {super.key, required this.farmName, required this.samples});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 209, 192),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              'Farm Name - $farmName',
              style: AppTextStyles.headline3,
            ),
            DataTable(
              columnSpacing: 24,
              columns: [
                DataColumn(
                  label: Text(
                    'Samples',
                    style: AppTextStyles.bodyText1.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Name',
                    style: AppTextStyles.bodyText1.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'ID',
                    style: AppTextStyles.bodyText1.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: samples.map((sample) {
                return DataRow(
                  cells: [
                    DataCell(Text(
                      sample.sampleNumber.toString(),
                      style: AppTextStyles.bodyText2
                          .copyWith(color: AppColors.black),
                    )),
                    DataCell(Text(
                      sample.name,
                      style: AppTextStyles.bodyText2
                          .copyWith(color: AppColors.black),
                    )),
                    DataCell(Text(
                      sample.id,
                      style: AppTextStyles.bodyText2
                          .copyWith(color: AppColors.black),
                    )),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

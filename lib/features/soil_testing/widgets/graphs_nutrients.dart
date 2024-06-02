import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class NutrientsGraph extends StatelessWidget {
  final List<int>yAxis;
  const NutrientsGraph({super.key, required this.yAxis});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(
          border: const Border(
            left: BorderSide(width: 1),
            bottom: BorderSide(width: 1),
          ),
        ),
        alignment: BarChartAlignment.spaceAround,
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: yAxis[0].toDouble() ,
                color: AppColors.macronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY:  yAxis[1].toDouble() ,
                color: AppColors.macronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY:  yAxis[2].toDouble() ,
                color: AppColors.macronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY:  yAxis[3].toDouble() ,
                color: AppColors.micronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY:  yAxis[4].toDouble() ,
                color: AppColors.micronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY:  yAxis[5].toDouble() ,
                color: AppColors.micronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY:  yAxis[6].toDouble()  ,
                color: AppColors.micronutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 7,
            barRods: [
              BarChartRodData(
                toY:  yAxis[7].toDouble() ,
                color: AppColors.secondaryNutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 8,
            barRods: [
              BarChartRodData(
                toY:  yAxis[8].toDouble() ,
                color: AppColors.secondaryNutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 9,
            barRods: [
              BarChartRodData(
                toY:  yAxis[9].toDouble() ,
                color: AppColors.secondaryNutrientColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 10,
            barRods: [
              BarChartRodData(
                toY:  yAxis[10].toDouble() ,
                color: AppColors.physicalParamColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          BarChartGroupData(
            x: 11,
            barRods: [
              BarChartRodData(
                toY:  yAxis[11].toDouble() ,
                color: AppColors.physicalParamColor,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
          
        ],
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (double value, TitleMeta meta) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('N', style: AppTextStyles.bodyText2);
                  case 1:
                    return const Text('P', style: AppTextStyles.bodyText2);
                  case 2:
                    return const Text('K', style: AppTextStyles.bodyText2);
                  case 3:
                    return const Text('Zn', style: AppTextStyles.bodyText2);
                  case 4:
                    return const Text('Fe', style: AppTextStyles.bodyText2);
                  case 5:
                    return const Text('Cu', style: AppTextStyles.bodyText2);
                  case 6:
                    return const Text('Mn', style: AppTextStyles.bodyText2);
                  case 7:
                    return const Text('B', style: AppTextStyles.bodyText2);
                  case 8:
                    return const Text('pH', style: AppTextStyles.bodyText2);
                  case 9:
                    return const Text('Ca', style: AppTextStyles.bodyText2);
                  case 10:
                    return const Text('EC', style: AppTextStyles.bodyText2);
                  case 11:
                    return const Text('OC', style: AppTextStyles.bodyText2);
                
                  default:
                    return const Text('', style: AppTextStyles.bodyText2);
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

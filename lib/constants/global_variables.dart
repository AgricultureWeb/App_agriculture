import 'package:krushisaathi/constants/colors.dart';

import '../features/soil_testing/widgets/nutrients_type_model.dart';

enum UserType { farmer, soilAgent }
class GlobalVariables{
  
  static const  List<NutrientLegend> nutrientsList = [
    NutrientLegend(color: AppColors.macronutrientColor, text: 'Macronutrients'),
    NutrientLegend(
        color: AppColors.secondaryNutrientColor, text: 'Secondary Nutrients'),
    NutrientLegend(color: AppColors.micronutrientColor, text: 'Micronutrients'),
    NutrientLegend(
        color: AppColors.physicalParamColor, text: 'Physical Parameters'),
  ];

}
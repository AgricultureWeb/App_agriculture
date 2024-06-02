import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/custom_button.dart';
import 'package:krushisaathi/common/widgets/govt_loc_card.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/sample_reg/widgets/register_success_card.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../models/farm_sample_data.dart';

class RegistrationSuccess extends StatefulWidget {
  const RegistrationSuccess({super.key});

  @override
  State<RegistrationSuccess> createState() => _RegistrationSuccessState();
}

class _RegistrationSuccessState extends State<RegistrationSuccess> {
  final String farmName = 'Gukesh Yard';
  final List<Sample> samples = [
    Sample(sampleNumber: 1, name: 'Center Field', id: 'ST10011'),
    Sample(sampleNumber: 2, name: 'Top Right Center', id: 'ST10012'),
    Sample(sampleNumber: 3, name: 'Center Field', id: 'ST10013'),
    Sample(sampleNumber: 4, name: 'Center Field', id: 'ST10014'),
    Sample(sampleNumber: 5, name: 'Center Field', id: 'ST10015'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'Registration Successful!',
          style: AppTextStyles.headline3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 2, bottom: 12),
              child: Column(
                children: [
                  SizedBox(
                    height: 100 * SizeConfig.blockSizeHorizontal,
                    child: RegisterSuccessCard(
                      farmName: farmName,
                      samples: samples,
                    ),
                  ),
                  Text(
                    'Write the Id number against each smaple , then Please Submit all the samplels in the selected Lab!',
                    style: AppTextStyles.headline3.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  const GovtLocCard(),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomButton(text: 'Get Directions', onSuccess: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

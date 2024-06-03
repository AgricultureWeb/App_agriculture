import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/custom_button.dart';
import 'package:krushisaathi/common/widgets/custom_textfield.dart';
import 'package:krushisaathi/common/widgets/govt_loc_card.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/sample_reg/screens/registration_succes_screen.dart';

class SampleRegistration extends StatefulWidget {
    static const String routeName='/Sample-Registration';
  const SampleRegistration({super.key});

  @override
  State<SampleRegistration> createState() => _SampleRegistrationState();
}

class _SampleRegistrationState extends State<SampleRegistration> {
  final TextEditingController _farmNameController = TextEditingController();
  final TextEditingController _sampleController1 = TextEditingController();
  final TextEditingController _sampleController2 = TextEditingController();
  final TextEditingController _sampleController3 = TextEditingController();
  final TextEditingController _sampleController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'Sample Registration',
          style: AppTextStyles.headline3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Enter Your Farm Name',
                    style: AppTextStyles.headline3,
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomTextField(
                      controller: _farmNameController,
                      hintText: 'Ex. Gukesh Yard'),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  const Text(
                    'Add Samples',
                    style: AppTextStyles.headline3,
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomTextField(
                      controller: _sampleController1,
                      hintText: 'Enter Sample Name'),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomTextField(
                      controller: _sampleController2,
                      hintText: 'Enter Sample Name'),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomTextField(
                      controller: _sampleController3,
                      hintText: 'Enter Sample Name'),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomTextField(
                      controller: _sampleController4,
                      hintText: 'Enter Sample Name'),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  Center(
                    child: IconButton.filled(
                      style: IconButton.styleFrom(
                          backgroundColor: AppColors.textFieldGreen),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                      ),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  SizedBox(
                    height: 44 * SizeConfig.blockSizeHorizontal,
                    child: const GovtLocCard(),
                  ),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  Center(
                      child: CustomButton(text: 'Register', onSuccess: () {
                        Navigator.pushNamed(context, RegistrationSuccess.routeName);
                      })),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  SizedBox(
                    height: 30 * SizeConfig.blockSizeHorizontal,
                    width: double.infinity,
                    child: Image.asset(
                      Assets.bottomSignUp,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

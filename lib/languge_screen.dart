import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/custom_button.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/auth/screens/create_account.dart';

class LanguageScreen extends StatefulWidget {
  static const String routeName = '/Language-screen';
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  void navigateToCreateAccount() {
    Navigator.pushReplacementNamed(context, CreateAccount.routeName);
  }

  String selectedValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38 * SizeConfig.blockSizeHorizontal,
                    width: double.infinity,
                    color: AppColors.backgroundColor,
                    child: Image.asset(Assets.appTitleImage),
                  ),
                  SizedBox(
                    height: 35 * SizeConfig.blockSizeHorizontal,
                  ),
                  Text(
                    'Choose Language',
                    style: AppTextStyles.headline1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  ButtonTheme(
                    alignedDropdown: true,
                    padding: const EdgeInsets.all(8),
                    child: DropdownButtonFormField(
                      value: selectedValue,
                      icon: const Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 22,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/globe.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                        contentPadding:  EdgeInsets.all(3*SizeConfig.blockSizeHorizontal),
                        fillColor: AppColors.textFieldGreen,
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      dropdownColor: AppColors.textFieldGreen,
                      items:  [
                        DropdownMenuItem(
                          value: 'English',
                          child: Text('English' , style: TextStyle(fontSize: 4*SizeConfig.blockSizeHorizontal),),
                        ),
                        DropdownMenuItem(
                          value: 'Hindi',
                          child: Text('Hindi',style: TextStyle(fontSize: 4*SizeConfig.blockSizeHorizontal)),
                        ),
                      ],
                      onChanged: (newValue) {
                        // Handle change
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30 * SizeConfig.blockSizeHorizontal,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'Next',
                        onSuccess: navigateToCreateAccount,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8*SizeConfig.blockSizeHorizontal,),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  Assets.bottomLoader,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

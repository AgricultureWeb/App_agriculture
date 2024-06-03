import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/custom_button.dart';
import 'package:krushisaathi/common/widgets/custom_textfield.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/auth/screens/login.dart';
import 'package:krushisaathi/features/auth/widgets/custom_divider.dart';
import 'package:krushisaathi/features/auth/widgets/upload_docs.dart';
import 'package:krushisaathi/features/home/screens/home_screen.dart';

class CreateAccount extends StatefulWidget {
  static const String routeName= '/Create-Account';
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _createAccountFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void navigateToHome(){
     Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }
    void navigateToLogin(){
 Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal * 6,
                  ),
                  SizedBox(
                    height: 38 * SizeConfig.blockSizeHorizontal,
                    width: double.infinity,
                    child: Image.asset(Assets.appTitleImage),
                  ),
                  Text(
                    'Create Account',
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 28,
                      color: AppColors.textDarkGreen,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal * 6,
                  ),
                  Form(
                      key: _createAccountFormKey,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                              controller: _nameController,
                              hintText: 'Enter Your Name',
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeHorizontal * 4,
                            ),
                            CustomTextField(
                              controller: _emailController,
                              hintText: 'Email',
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeHorizontal * 4,
                            ),
                            CustomTextField(
                              controller: _passwordController,
                              hintText: 'Enter Password',
                              icon: const Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeHorizontal * 4,
                            ),
                            CustomTextField(
                              controller: _emailController,
                              hintText: 'Confirm Password',
                              icon: const Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeHorizontal * 6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                'Upload Documents',
                                style: AppTextStyles.headline2
                                    .copyWith(color: AppColors.textDarkGreen),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DocsUpload(
                                  text: 'Adhaar Card',
                                ),
                                DocsUpload(
                                  text: 'Address',
                                ),
                                DocsUpload(
                                  text: 'Passbook Copy',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2 * SizeConfig.blockSizeHorizontal,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DocsUpload(
                                  text: 'Photograph',
                                ),
                                DocsUpload(
                                  text: 'e-KYF ID',
                                  isOptional: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 6 * SizeConfig.blockSizeHorizontal,
                  ),
                  CustomButton(text: 'Create Account', onSuccess: () {
                    navigateToHome();
                  }),
                  SizedBox(
                    height: 4 * SizeConfig.blockSizeHorizontal,
                  ),
                  const CustomDivider(),
                  SizedBox(
                    height: 2 * SizeConfig.blockSizeHorizontal,
                  ),
                  TextButton(
                      onPressed: () {
                        navigateToLogin();
                      },
                      child: Text(
                        'Login',
                        style: AppTextStyles.headline2
                            .copyWith(color: AppColors.textDarkGreen),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: SizeConfig.blockSizeVertical *
                  20, // Adjust the height as needed
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  Assets.bottomSignUp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

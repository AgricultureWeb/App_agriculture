import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/custom_button.dart';
import 'package:krushisaathi/common/widgets/custom_textfield.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/auth/widgets/checkbox.dart';
import 'package:krushisaathi/features/auth/widgets/user_type.dart';

import '../../../constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  UserType _userType = UserType.farmer;
  bool termsCheck = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent resizing to avoid the keyboard
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                SizedBox(
                  height: 2 * SizeConfig.blockSizeHorizontal,
                ),
                Text(
                  'LOGIN',
                  style: AppTextStyles.headline1.copyWith(
                    fontSize: 28,
                    color: AppColors.textDarkGreen,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 4,
                ),
                UserTypeSelector(
                  selectedUserType: _userType,
                  onChanged: (UserType? userType) {
                    setState(() {
                      _userType = userType!;
                    });
                  },
                ),
                SizedBox(
                  height: 8 * SizeConfig.blockSizeHorizontal,
                ),
                Form(
                  key: _loginFormKey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal * 4,
                        ),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                          icon: const Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal * 4,
                        ),
                        CustomCheckBox(
                          termsCheck: termsCheck,
                          onSuccess: (bool? value) {
                            setState(() {
                              termsCheck = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 6 * SizeConfig.blockSizeHorizontal,
                ),
                CustomButton(text: 'Login', onSuccess: () {}),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: SizeConfig.blockSizeVertical * 20,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(
                Assets.bottomLogin,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

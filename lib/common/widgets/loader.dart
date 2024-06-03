import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/languge_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    _navigateToCreateAccount();
    super.initState();
  }

  void _navigateToCreateAccount() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, LanguageScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.blockSizeHorizontal * 20,
          ),
          Container(
            color: AppColors.backgroundColor,
            height: SizeConfig.blockSizeHorizontal * 50,
            width: double.infinity,
            child: Image.asset(
              Assets.appTitleImage,
            ),
          ),
          Expanded(
            child: Center(
                child: LoadingAnimationWidget.inkDrop(
              color: AppColors.primaryColor,
              size: 40,
            )),
          ),
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Image.asset(Assets.bottomLoader),
          )
        ],
      ),
    );
  }
}

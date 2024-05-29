
import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/assets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.blockSizeHorizontal*20,

          ),
          Container(
             color: AppColors.backgroundColor,
            height: SizeConfig.blockSizeHorizontal*50 ,
            width: double.infinity,
            child: Image.asset(Assets.appTitleImage ,),
          ),
         
          Expanded(
            child: Center(
              child: LoadingAnimationWidget.inkDrop (color: AppColors.primaryColor, size: 40 ,  )
            ),
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
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon? icon;
   const CustomTextField({super.key, required this.controller, required this.hintText, this.icon });

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
                    
                    controller: controller,
                    decoration: InputDecoration(

                      alignLabelWithHint: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      filled: true,
                      hintText: hintText ,
                      hintStyle: AppTextStyles.bodyText2 ,
                     suffixIcon: icon ?? const Text(
                      ''
                     ) ,
                      fillColor: AppColors.textFieldGreen,
                       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none ),
                       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none ),
                     prefix: const SizedBox(width: 20), 
                    ),
                   );
  }
}
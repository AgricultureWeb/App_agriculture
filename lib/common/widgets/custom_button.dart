// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:krushisaathi/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onSuccess;
  const CustomButton({
    super.key,
    required this.text,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          backgroundColor: AppColors.primaryColor,
          minimumSize: const Size(120, 40)),
      onPressed: onSuccess,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.backgroundColor),
      ),
    );
  }
}

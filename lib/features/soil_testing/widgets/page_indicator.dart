import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class PageIndicator extends StatelessWidget {
  final int currentPageIndex;
  final int totalPages;

  const PageIndicator({
    super.key,
    required this.currentPageIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPageIndex
                ? AppColors.primaryColor // Change color for active page
                : Colors.grey.withOpacity(0.5), // Change color for inactive page
          ),
        ),
      ),
    );
  }
}

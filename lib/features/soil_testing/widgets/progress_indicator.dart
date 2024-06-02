import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';

class ProgressPainter extends CustomPainter {
  final double progress; // Progress value between 0.0 and 1.0
  final List<String> tasks; // List of task names

  ProgressPainter(this.progress, this.tasks);

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = AppColors.cardGrey
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = AppColors.primaryColor
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Define the positions of the circles
    double startX = size.width * 0.1;
    double endX = size.width * 0.9;
    double sectionWidth = (endX - startX) / (tasks.length - 1);

    // Draw the background progress line
    canvas.drawLine(Offset(startX, size.height / 2), Offset(endX, size.height / 2), backgroundPaint);

    // Draw the filled progress line
    double progressX = startX + (endX - startX) * progress;
    canvas.drawLine(Offset(startX, size.height / 2), Offset(progressX, size.height / 2), progressPaint);

    // Draw the progress rectangle
    final rectanglePaint = Paint()
      ..color = AppColors.primaryColor
      ..style = PaintingStyle.fill;
    double rectWidth = 20;
    canvas.drawRect(Rect.fromCenter(center: Offset(progressX, size.height / 2), width: rectWidth, height: 8), rectanglePaint);

    // Draw the circles and text
    final circlePaint = Paint()
      ..color = AppColors.primaryColor;
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (int i = 0; i < tasks.length; i++) {
      double circleX = startX + sectionWidth * i;
      canvas.drawCircle(Offset(circleX, size.height / 2), 12, backgroundPaint);
      if (progressX >= circleX) {
        canvas.drawCircle(Offset(circleX, size.height / 2), 12, circlePaint);
      }

      // Draw text below the circle
      textPainter.text = TextSpan(
        text: tasks[i],
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(circleX - textPainter.width / 2, size.height / 2 + 20));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CustomProgressIndicator extends StatelessWidget {
  final double progress; // Progress value between 0.0 and 1.0
  final List<String> tasks; // List of task names

  const CustomProgressIndicator({super.key, required this.progress, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100, // Adjust height to accommodate text
      child: CustomPaint(
        painter: ProgressPainter(progress, tasks),
      ),
    );
  }
}

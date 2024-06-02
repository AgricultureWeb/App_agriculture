import 'package:flutter/material.dart';

class SingleRecommendation extends StatelessWidget {
  final String image;
  final String text;
  final String? time;
  const SingleRecommendation({super.key, required this.image, required this.text,  this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: 110,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Image.network(
            image,
            fit: BoxFit.fitHeight,
          ),
        ),
        Text(text),
        if(time!=null)
        Text(time!),
      ],
    );
  }
}

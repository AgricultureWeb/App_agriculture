// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:krushisaathi/constants/size_config.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class DocsUpload extends StatelessWidget {
  final String text;
  final bool isOptional;
  const DocsUpload({
    super.key,
    required this.text,
    this.isOptional = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color(0xffEDEDED),
          child: SizedBox(
            width: 25 * SizeConfig.blockSizeHorizontal,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                      softWrap: true,
                      style: AppTextStyles.bodyText2.copyWith(
                          color: AppColors.textDarkGreen,
                          fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: AppColors.textFieldGreen,
                            visualDensity: VisualDensity.compact,
                            minimumSize: const Size(20, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 12)),
                        onPressed: () {},
                        child: Text(
                          'Upload',
                          style: AppTextStyles.bodyText2
                              .copyWith(color: AppColors.black),
                        ))
                  ]),
            ),
          ),
        ),
        if (isOptional)
          const Row(
            children: [
              SizedBox(width: 4),
              Icon(
                Icons.star,
                size: 12,
                color: Colors.red,
              ),
              Text(
                'Optional',
                style: AppTextStyles.caption,
              ),
            ],
          )
      ],
    );
  }
}

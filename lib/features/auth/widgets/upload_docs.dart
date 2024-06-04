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
            // width: 25 * SizeConfig.blockSizeHorizontal,
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
                      // softWrap: true,
                      style: AppTextStyles.bodyText2.copyWith(
                          color: AppColors.textDarkGreen,
                          fontWeight: FontWeight.w400,
                          fontSize: 3.8*SizeConfig.blockSizeHorizontal
                          ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: AppColors.textFieldGreen,
                            visualDensity: VisualDensity.compact,
                            minimumSize:  Size(5*SizeConfig.blockSizeHorizontal, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            padding:  EdgeInsets.symmetric(
                                horizontal: 3*SizeConfig.blockSizeHorizontal, vertical: 3*SizeConfig.blockSizeHorizontal)),
                        onPressed: () {},
                        child: Text(
                          'Upload',
                          softWrap: true,
                          style: AppTextStyles.bodyText2
                              .copyWith(color: AppColors.black, fontSize: 3.5*SizeConfig.blockSizeHorizontal ),
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

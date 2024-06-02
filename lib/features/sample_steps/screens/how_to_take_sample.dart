import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/sample_steps/widgets/youtube_vdo_player.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class HowToTakeSample extends StatefulWidget {
  const HowToTakeSample({super.key});

  @override
  State<HowToTakeSample> createState() => _HowToTakeSampleState();
}

class _HowToTakeSampleState extends State<HowToTakeSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'How to Take Sample',
          style: AppTextStyles.headline3,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          SizedBox(
            height: 8 * SizeConfig.blockSizeHorizontal,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.cardGrey,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  height: 200,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: const YouTubeVideoPlayer(
                        videoId: 'dQw4w9WgXcQ',
                      )),
                ),
                SizedBox(height: 6 * SizeConfig.blockSizeHorizontal),
                const Text(
                  'STEPS',
                  style: AppTextStyles.headline2,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 30 * SizeConfig.blockSizeHorizontal,
                            width: 40 * SizeConfig.blockSizeHorizontal,
                            child: const Text(
                              'Lorem ipsum dolor sit amet ',
                              maxLines: 5,
                              softWrap: true,
                            )),
                        const Spacer(),
                        SizedBox(
                          width: 40 * SizeConfig.blockSizeHorizontal,
                          height: 30 * SizeConfig.blockSizeHorizontal,
                          child: Image.network(''),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

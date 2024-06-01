import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';

class CardForNews extends StatelessWidget {
  final String image;
  final String text;
  final String time;
  const CardForNews({super.key, required this.image, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
                    color: AppColors.textFieldGreen,
                        child: SizedBox(
                          height: 76*SizeConfig.blockSizeHorizontal,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                    
                                height: 52*SizeConfig.blockSizeHorizontal,
                                width: double.infinity,
                                child: Stack(
                                  children: [ClipRRect(
                                  
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)) ,
                                    child: Image.network(
                                      width: double.infinity,
                                      fit: BoxFit.fitWidth ,
                                      image ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: IconButton(
                                      onPressed: (){},
icon: 
                                Image.asset('assets/save.png')),

                                    
                                    )

                                  ],
                                )
                                ),
                              Expanded(
                                child:  Padding(
                                  padding: const EdgeInsets.only(left:8,bottom: 2),
                                  child: Column(
                                    children: [
                                    Text(text ,style: AppTextStyles.headline3 ,maxLines: 2,overflow: TextOverflow.ellipsis,),
                                  const Spacer(),
                                                              
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time_sharp, size: 18,),
                                      Text(' $time min read'),
                                    ],
                                  )
                                    ],
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                  );
  }
}


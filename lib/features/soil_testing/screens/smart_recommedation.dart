import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/soil_testing/widgets/single_recommendation.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class SmartRecommendation extends StatefulWidget {
  const SmartRecommendation({super.key});

  @override
  State<SmartRecommendation> createState() => _SmartRecommendationState();
}
final List<String>recommendation=[
  'Sprinkler Irrigation is most suitable',
  'Sprinkler Irrigation is most suitable',
  'Sprinkler Irrigation is most suitable',
  'Sprinkler Irrigation is most suitable',
];

class _SmartRecommendationState extends State<SmartRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title:  Text(
          'Smart Recommendation',
          style: AppTextStyles.headline2.copyWith(fontWeight: FontWeight.w500) ,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Yard-1', style: AppTextStyles.headline2,),
                  SizedBox(height: 2*SizeConfig.blockSizeHorizontal,),
                  Text('Fertilizer Recommendations', style: AppTextStyles.headline3.copyWith(color: AppColors.primaryColor) ,),
                    SizedBox(height: 4*SizeConfig.blockSizeHorizontal,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Liver Organic',time: '16-8=9',),
                        SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Liver Organic',time: '16-8=9'),
                       SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Liver Organic',time: '16-8=9'),
                      ],
                    ),
                    SizedBox(height: 8*SizeConfig.blockSizeHorizontal,),
                    Text('Best Crops to Grow', style: AppTextStyles.headline3.copyWith(color: AppColors.primaryColor) ,),
                    SizedBox(height: 4*SizeConfig.blockSizeHorizontal,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Rice',),
                      SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Wheat',),
                       SingleRecommendation(image: 'https://th.bing.com/th?id=OIP.igcDKUIcMuvJ4fVi-oEAqwHaJ3&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'Liver Organic',),
                     
                      ],
                    ),
                    SizedBox(height: 4*SizeConfig.blockSizeHorizontal,),
                   Text('Reccomendations For Better Yield', style: AppTextStyles.headline3.copyWith(color: AppColors.primaryColor) ,),
                     SizedBox(height: 4*SizeConfig.blockSizeHorizontal,),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Chip(
                          backgroundColor: AppColors.cardGrey,
                          label: Text('Climate', style: AppTextStyles.bodyText1,)),
                         Chip(
                          backgroundColor: AppColors.cardGrey,
                         label: Text('Soil Type', style: AppTextStyles.bodyText1,)),
                       ],
                     ),
                     SizedBox(height: 4*SizeConfig.blockSizeHorizontal,),
                     ListView.builder(
                      shrinkWrap: true,
                      itemCount: recommendation.length,
                      itemBuilder: (context,index){
                      return ListTile(

                      leading: const Icon(Icons.star,color: AppColors.primaryColor,),
                 title: Text(recommendation[index]),
                     );
                     }),
                    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
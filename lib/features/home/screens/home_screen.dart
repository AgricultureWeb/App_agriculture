import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/home/widgets/feat_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  drawer:   Drawer(
        child: ListView(
          
          padding: const EdgeInsets.all(0),
          children: [
            // ListTile(
            //   contentPadding: EdgeInsets.only(left: 30*SizeConfig.blockSizeHorizontal,right: 24,top: 32,),
            //   title: Text('Menu',style: AppTextStyles.headline2,)),
              const Padding(
                padding: EdgeInsets.only(left: 24,right: 24,top: 36,bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Menu',style: AppTextStyles.headline2,)
                  ],
                ),
              ),
              const Divider(color: AppColors.primaryColor,),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: const Text(' My Account '),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: const ImageIcon(AssetImage('assets/Test Tube.png') ),
              title: const Text(' Soil Analysis '),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: const ImageIcon(AssetImage('assets/News.png') ),
              title: const Text(' News Feed '),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: const ImageIcon(AssetImage('assets/Online Support.png') ),
              title: const Text(' Help and Support '),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: const ImageIcon(AssetImage('assets/Privacy Policy.png') ),
              title: const Text(' Privacy Policy '),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut',style: TextStyle(color: Colors.red),),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ), //Drawer
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        // leading: Image.asset(
        //   'assets/menu.png',
        //   cacheHeight: 6 * SizeConfig.blockSizeHorizontal.round(),
        // ),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              width: 4 * SizeConfig.blockSizeHorizontal,
            ),
            Image.asset('assets/app_icon.jpg'),
            const Text(
              'Krushisaathi',
              style: AppTextStyles.headline2,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: ListView(shrinkWrap: true, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hello Shadan',
                      style: AppTextStyles.headline1,
                    ),
                    Image.asset(
                      'assets/globe.png',
                      height: 32,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8 * SizeConfig.blockSizeHorizontal,
                ),
                const FeaturesCard(
                    text: 'Soil Testing',
                    imagePath: 'assets/soil_testing.jpeg'),
                SizedBox(
                  height: 2 * SizeConfig.blockSizeHorizontal,
                ),
                const FeaturesCard(
                    text: 'How to take Soil Sample',
                    imagePath: 'assets/take_soil_sample.jpeg'),
                SizedBox(
                  height: 2 * SizeConfig.blockSizeHorizontal,
                ),
                const FeaturesCard(
                    text: 'Register Your Sample',
                    imagePath: 'assets/register_soil_sample.jpeg')
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

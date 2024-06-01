import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krushisaathi/constants/colors.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/constants/text_styles.dart';
import 'package:krushisaathi/features/news/widgets/news_card.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
             backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text('News Feed',style: AppTextStyles.headline3   ,),
      ),
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 8,),
              child: Column(
                  children: [
                    TextFormField(
                      
                    decoration: InputDecoration(
                      hintText: 'Search Topics...',
                      filled: true, 
                      fillColor: AppColors.textFieldGreen,
                      prefixIcon: const Icon(Icons.search_rounded),
                      contentPadding: const EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24)
                      ),
            
                    ),
                    ),
                    SizedBox(height: 2*SizeConfig.blockSizeHorizontal,),
                    Expanded(child: ListView(
                      children: const [
                        CardForNews(image: 'https://th.bing.com/th?id=OIP.LQhOd_rxqhCt1_K0t795xwHaLM&w=203&h=307&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'badnfasdfnslduifbsd,jfhablsidufbdsafn,sdfjajsd.fnadisufhbj' , time: '10')
                      , CardForNews(image: 'https://th.bing.com/th?id=OIP.LQhOd_rxqhCt1_K0t795xwHaLM&w=203&h=307&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'badnfasdfnslduifbsd,jfhablsidufbdsafn,sdfjajsd.fnadisufhbj' , time: '10')
                      , CardForNews(image: 'https://th.bing.com/th?id=OIP.LQhOd_rxqhCt1_K0t795xwHaLM&w=203&h=307&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'badnfasdfnslduifbsd,jfhablsidufbdsafn,sdfjajsd.fnadisufhbj' , time: '10')
                      , CardForNews(image: 'https://th.bing.com/th?id=OIP.LQhOd_rxqhCt1_K0t795xwHaLM&w=203&h=307&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2', text: 'badnfasdfnslduifbsd,jfhablsidufbdsafn,sdfjajsd.fnadisufhbj' , time: '10')
                      
                      ],
                    ))
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
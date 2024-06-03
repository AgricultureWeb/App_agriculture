
import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';
import 'package:krushisaathi/features/soil_testing/widgets/page_indicator.dart';
import 'package:krushisaathi/features/soil_testing/widgets/slidable_card.dart';
import 'package:krushisaathi/features/soil_testing/widgets/yard_component.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class SoilTestingOverView extends StatefulWidget {
    static const String routeName='/Soil-Testing-overview';
  const SoilTestingOverView({super.key});

  @override
  State<SoilTestingOverView> createState() => _SoilTestingOverViewState();
}

class _SoilTestingOverViewState extends State<SoilTestingOverView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      _currentPage = _pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'Soil Testing',
          style: AppTextStyles.headline3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: 90*SizeConfig.blockSizeHorizontal,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
                child: Column(
                  children: [
                    Text(
                      'In Progress',
                      style: AppTextStyles.bodyText1.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 55 * SizeConfig.blockSizeHorizontal,
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const SlidableCard();
                        },
                      ),
                    ),
                    SizedBox(height: 2*SizeConfig.blockSizeHorizontal,),
                    PageIndicator(
                      currentPageIndex: _currentPage,
                      totalPages: 5,
                    ),
                    SizedBox(height: 12*SizeConfig.blockSizeHorizontal,),
                    Text('Completed Test',  style: AppTextStyles.bodyText1.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const YardComponent(),
          const YardComponent(),

          ],
        ),
      ),
    );
  }
}


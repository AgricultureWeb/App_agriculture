import 'package:flutter/material.dart';
import 'package:krushisaathi/common/widgets/loader.dart';
import 'package:krushisaathi/constants/size_config.dart';

void main() {
  runApp( 
    const KrushiSaathi());
}

class KrushiSaathi extends StatelessWidget {
  const KrushiSaathi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'KrushiSaathi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Loader(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:water_quality_app/Pages/regionpage.dart';
import 'package:water_quality_app/Pages/info_page.dart';
import 'package:water_quality_app/Pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      routes: {
        '/info_page':(context) => const InfoPage(),
        '/regionpage':(context) => RegionPage(),
         '/intro_page':(context) => const IntroPage(),

      },
    );
  }
}


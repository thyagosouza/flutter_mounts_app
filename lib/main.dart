import 'package:flutter/material.dart';
import 'package:flutter_mounts_world/pages/mounts_app_page.dart';

import 'pages/details_page.dart';
import 'pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(),
      //home: MountsAppPage(),
      //home: DetailsPage(),
    );
  }
}

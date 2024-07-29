import 'package:flutter/material.dart';
import 'package:netflix/screens/detail_page.dart';
import 'package:netflix/screens/home_page2.dart';
import 'package:netflix/screens/home_page3.dart';
import '../screens/home_page1.dart';
import '../screens/splash.dart';

class Routes {
  static String splash = '/';
  static String home_page1 = 'homePage1';
  static String home_page2 = 'homePage2';
  static String home_page3 = 'homePage3';
  static String details_page = 'detailpage';

  static Map<String, WidgetBuilder> myRoutes = {
    splash: (context) => const SplashScreen(),
    home_page1: (context) => const Homepage1(),
    home_page2: (context) => const HomePage2(),
    home_page3: (context) => const HomePage3(),
    details_page: (context) => const DetailPage(),
  };
}

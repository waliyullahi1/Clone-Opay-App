import 'package:flutter/material.dart';
import 'package:dashbord/pages/home_page.dart';
import 'package:dashbord/pages/reward_page.dart';
import 'package:dashbord/pages/finance_page.dart';
import 'package:dashbord/pages/card_page.dart';

class AppRoutes {
  // 🧭 Define route names

  static const String home = '/home';
  static const String reward = '/reward';
  static const String finance = '/finance';
  static const String card = '/SimpleTabSlidePage';

  // 🗺️ Define route map
  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    reward: (context) => const RewardPage(),
    finance: (context) => const FinancePage(),
    card: (context) => const CardPage(),
  };
}

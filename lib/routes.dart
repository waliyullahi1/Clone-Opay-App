import 'package:dashbord/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/pages/home_page.dart';
import 'package:dashbord/pages/reward_page.dart';
import 'package:dashbord/pages/finance_page.dart';
import 'package:dashbord/pages/card_page.dart';
import 'package:dashbord/pages/login.dart';

class AppRoutes {
  // 🧭 Define route names

  static const String home = '/home';
  static const String reward = '/reward';
  static const String finance = '/finance';
  static const String card = '/SimpleTabSlidePage';
  static const String login = '/login';

  // 🗺️ Define route map
  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    login: (context) => const LoginPage(),
    reward: (context) => const RewardPage(),
    finance: (context) => const FinancePage(),
    card: (context) => const CardPage(),
  };
}

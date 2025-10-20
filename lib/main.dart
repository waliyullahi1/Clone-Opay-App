import 'package:flutter/material.dart';
import 'routes.dart'; // 👈 import it
import 'package:dashbord/constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      // 🚀 Use routes from routes.dart
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}

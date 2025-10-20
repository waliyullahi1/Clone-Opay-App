import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:dashbord/pages/home_page.dart';
import 'package:dashbord/pages/reward_page.dart';
import 'package:dashbord/pages/finance_page.dart';
import 'package:dashbord/pages/card_page.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
  });

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return; // Prevent reload of same page

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const RewardPage()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const FinancePage()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const CardPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary, //
      unselectedItemColor: AppColors.grey, //
      showUnselectedLabels: true, // Show all labels
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600, // bold for active label
        fontSize: 13,
      ),// Optional: background color
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.radio_button_checked_outlined),
          activeIcon: Icon(Icons.radio_button_checked),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.diamond_outlined),
          activeIcon: Icon(Icons.diamond),
          label: "Rewards",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_outlined),
          activeIcon: Icon(Icons.receipt),
          label: "Finance",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card_outlined),
          activeIcon: Icon(Icons.credit_card),
          label: "Card",
        ),
      ],
    );
  }
}

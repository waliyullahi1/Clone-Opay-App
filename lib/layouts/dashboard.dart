import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> navItems = const [
      {"icon": Icons.radio_button_checked, "label": "Home"},
      {"icon": Icons.diamond, "label": "Reward"},
      {"icon": Icons.receipt, "label": "Finance"},
      {"icon": Icons.credit_card, "label": "Card"},
    ];

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary, // 🔵 Active color
      unselectedItemColor: Colors.grey, // ⚪ Inactive color
      showUnselectedLabels: true,
      elevation: 8,
      items: navItems.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item["icon"]),
          label: item["label"],
        );
      }).toList(),
    );
  }
}

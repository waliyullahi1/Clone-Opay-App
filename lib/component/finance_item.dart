import 'package:flutter/material.dart';

import '../constant/colors.dart';


class FinanceItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const FinanceItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.financeColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: AppColors.financeColor,
            size: 25,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),

      ],
    );
  }
}

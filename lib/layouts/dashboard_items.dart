import 'package:flutter/material.dart';

import '../constant/colors.dart';


class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const DashboardItem({
    super.key,
    required this.icon,
    required this.label
  });

  @override


  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          decoration: BoxDecoration(
              color:  AppColors.secondary,
              borderRadius: BorderRadius.circular(9)

          ),
          padding: EdgeInsets.all(7),
          child: Icon(icon, color: AppColors.primary, size: 24, ),
        ),
        SizedBox(height: 5,),
        Text(label, style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: AppColors.grey

        ),),
      ],
    );
  }
}

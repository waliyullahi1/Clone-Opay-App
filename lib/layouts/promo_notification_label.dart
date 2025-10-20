
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class PromoNotificationLabel extends StatelessWidget {
  const PromoNotificationLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(

          width:
          MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(

          ),
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    9,
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: Image.asset(
                  'assets/images/gift.png',
                  width: 40,
                ),
              ),
              const SizedBox(width: 5),

              // 👇 Add Expanded here so text wraps instead of overflow
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 20% Discount',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Update your app to enjoy the exclusive loan offer',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              // minimumSize: const Size(60, 30),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            ),
            onPressed: () {
              print('Button clicked!');
            },
            child: Text('Go', style: TextStyle(color: Colors.white),)
        )
      ],
    );
  }
}

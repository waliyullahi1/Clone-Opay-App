
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class PhysicalCardPage extends StatelessWidget {

  PhysicalCardPage({super.key}); // constructor stays const ✅
  final features = [
    FeatureItem(
      icon: Icons.style,
      title: 'Free application and Usage',
      richText: [
        const TextSpan(text: 'Free Application '),
        TextSpan(text: 'Zero ', style: TextStyle(color: AppColors.primary, fontWeight:  FontWeight.w600)),
        const TextSpan(text: 'Maintenance', ),
      ],
    ),
    FeatureItem(
      icon: Icons.lock,
      title: 'Earn',
      richText: [
        const TextSpan(text: 'Flexible Spending with'),
        TextSpan(text: '15% ', style: TextStyle(color: AppColors.primary, fontWeight:  FontWeight.w600)),
        const TextSpan(text: 'anual interest'),
      ],
    ),
    FeatureItem(
      icon: Icons.verified_user,
      title: 'Security',
      richText: [
        const TextSpan(text: 'CBN licensed,   '),
        TextSpan(text : 'NIC ', style: TextStyle(color: AppColors.primary)),
        const TextSpan(text: 'Insured', style: TextStyle(fontWeight:  FontWeight.w600)),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Column(
          children: [

            Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius:  BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  )
                              ),
                              child: Text('Your Most Trusted Card', style: TextStyle(color: AppColors.primary),)),
                          SizedBox(height: 20,),
                          Image.asset( 'assets/images/card.png'),
                          SizedBox(height: 40,),
                          Column(
                            children: features.map((item) => Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: item,
                            )).toList(),
                          )


                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Column(

                children: [
                  Row(
                    children: [
                      Icon(Icons.check_box, size: 20, color: AppColors.primary),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(fontSize: 12, color: Colors.black),
                            children: [
                              TextSpan(text:'click the button below to accept '),
                              TextSpan(text:'Teams & Condition ', style: TextStyle(
                                  color: AppColors.primary
                              )),

                            ]
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,

                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        ),
                        onPressed: () {
                          print('Button  clicked!');
                        },
                        child: Text('Get It Now', style: TextStyle(color: Colors.white, fontSize: 15), )
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}


class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<TextSpan> richText;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.richText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(7),
            ),
            padding: const EdgeInsets.all(5.0),
            child: Icon(icon, size: 25, color: AppColors.primary),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                  children: richText,
                ),
              ),
            ],
          ),

          SizedBox(height: 1,),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

import '../constant/colors.dart';

class VirtualCardPage extends StatelessWidget {

   VirtualCardPage({super.key});
   final features = [
     FeatureItem(
       icon: Icons.style,
       title: 'Install Access',
       richText: [
         const TextSpan(text: 'Apply and activate  '),
         TextSpan(text: 'Instantly ', style: TextStyle(color: AppColors.primary, fontWeight:  FontWeight.w600)),

       ],
     ),
     FeatureItem(
       icon: Icons.lock,
       title: 'Rep Your State Of Origin',
       richText: [

         TextSpan(text: 'Get a Virtual Opay card unique to your state of origin ', style: TextStyle(color: AppColors.primary, fontWeight:  FontWeight.w600)),

       ],
     ),
     FeatureItem(
       icon: Icons.cloud_circle,
       title: 'Online Merchant Acceptance',
       richText: [
         const TextSpan(text: 'Accepted by,   '),
         TextSpan(text : '40,000+ ', style: TextStyle(color: AppColors.primary)),
         const TextSpan(text: 'online merchants including JUMIA, \n KONGA NETFLIX UBER Wallet Finding and others', style: TextStyle(fontWeight:  FontWeight.w600, color: AppColors.grey)),
       ],
     ),
     FeatureItem(
       icon: Icons.verified_user,
       title: 'Online Merchant Acceptance',
       richText: [
         const TextSpan(text: 'Accepted by,   '),
         TextSpan(text : '40,000+ ', style: TextStyle(color: AppColors.primary)),
         const TextSpan(text: 'online merchants including JUMIA, \n KONGA NETFLIX UBER Wallet Finding and others', style: TextStyle(fontWeight:  FontWeight.w600, color: AppColors.grey)),
       ],
     ),
   ];// constructor stays const ✅

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
                        Image.asset( 'assets/images/virtual_card.png'),
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

          SizedBox(height: 2,),
        ],
      ),
    );
  }
}

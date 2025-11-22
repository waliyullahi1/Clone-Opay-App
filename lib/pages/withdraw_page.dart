

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashbord/layouts/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:flutter/services.dart';

class WithdrawPage extends StatefulWidget {
  const  WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Map<String, dynamic>> recentTransaction = [
    {"name": "Withdraw via OPay merchants  ", "accNo": "send money to g  an OPay marchant's Wallet and get cash equivalent", 'icon': Icons.radio_button_checked},
    {"name": "Withdraw with Opay", "accNo": "withraws from any ATM vor POS  around you", 'icon': Icons.home_repair_service},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.only(top: 14, left: 5, right: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(color: Colors.black26, blurRadius: 10),
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.chevron_left),
                      Text(' Withdraw')


                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [



            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(11),
              ),
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Column(
                    children: [
                      Column(
                        children: recentTransaction.map((person) {
                          return list(person["name"]!, person["accNo"]!, person["icon"]!);
                        }).toList(),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),





                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.all(8),
              child:   Container(
                decoration: BoxDecoration(
                    color: AppColors.financeColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(13)
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.add_location, color: AppColors.financeColor, size: 20,),
                    SizedBox(width: 5,),
                    Text('Click here to find nearby merchant or ATM', style: TextStyle(

                    ),)
                  ],
                ),
              ),

            )

          ],
        ),
      ),

    );
  }

  Widget tabButton(String text, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: currentIndex == index ? FontWeight.bold : FontWeight.normal,
              color: currentIndex == index ? AppColors.primary : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget list(String name, String accNo, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(

        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

          // 👇 Add shadow here
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1), // shadow color
          //     blurRadius: 4,  // how soft the shadow is
          //     spreadRadius: 1, // how wide the shadow spreads
          //     offset: Offset(0, 4), // shadow position (x, y)
          //   ),
          // ],
        ),

        child: Row(
          children: [

            Container(

              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(9)

              ),
                child: Icon( icon,  size: 27, )
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle( fontWeight: FontWeight.w500, fontSize: 13),),
                  SizedBox( height: 5,),
                  Text(accNo, style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.1,),)
                ],
              ),
            ),
            Icon( Icons.keyboard_arrow_right, ),
          ],
        ),
      ),
    );
  }


}

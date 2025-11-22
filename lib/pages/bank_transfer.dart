

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashbord/layouts/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:flutter/services.dart';

class BankTransfer extends StatefulWidget {
 const  BankTransfer({super.key});

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Map<String, dynamic>> recentTransaction = [
    {"name": "ABDULWAHEED WALIYULAHI IDOWU ", "accNo": "123 467 7556"},
    {"name": "ABDULSALIM KENNY SAYO", "accNo": "987 6543 2210"},
    {"name": "RUKAYAT OMOLARA ODETOKUN", "accNo": "111 222 3313"},
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
                      Text(' Transfer to Bank Account')


                    ],
                  ),
                  Row(
                    children: [
                      Text('History', style: TextStyle(
                        color: AppColors.primary
                      ),)
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    SizedBox(height: 5,),
                    CarouselSlider(
                        options: CarouselOptions(
                            viewportFraction: 1.0,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                          autoPlayInterval: Duration(seconds: 1),  // how long each slide stays
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                            height: 90.0,

                        ),
                        items: [
                          Image.asset('assets/images/banner1.png',width: double.infinity, // <-- make image take full width
                            fit: BoxFit.cover,    ),
                          Image.asset('assets/images/banner2.png' ,width: double.infinity, // <-- make image take full width
                            fit: BoxFit.cover,),
                          Image.asset('assets/images/banner3.png' ,width: double.infinity, // <-- make image take full width
                            fit: BoxFit.cover,),
                          Image.asset('assets/images/banner4.png' ,width: double.infinity, // <-- make image take full width
                            fit: BoxFit.cover,),


                        ]
                    ),

                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.financeColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(13)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(Icons.verified, color: AppColors.financeColor, size: 14,),
                          SizedBox(width: 5,),
                          Text('Instant, Zero Issues, Free', style: TextStyle(
                            color: AppColors.financeColor
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),





                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                   Text('Recipient Account',
                     style: TextStyle(
                       fontWeight: FontWeight.w600,
                       fontSize: 16
                     ),
                   ),
                    SizedBox(height: 5,),

                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly, // Only numbers
                        LengthLimitingTextInputFormatter(10),   // Max 10 digits
                      ],
                      decoration: InputDecoration(


                        hintText: 'Enter 10 digital Account Number',
                        hintStyle: TextStyle(
                          fontSize: 14, // 👈 smaller font size
                          color: Colors.grey[400], // 👈 softer color
                          fontWeight: FontWeight.w400, // optional
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[200]!, // focused bottom border color
                            width: 1.0, // focused bottom border width
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[200]!, // focused bottom border color
                              width: 1.0, // focused bottom border width
                            ),
                          ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      ),
                    ),
                    SizedBox(height: 9,),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly, // Only numbers
                        LengthLimitingTextInputFormatter(10),   // Max 10 digits
                      ],
                      decoration: InputDecoration(


                        hintText: 'Select Bank',
                        hintStyle: TextStyle(
                          fontSize: 14, // 👈 smaller font size
                          color: Colors.grey[400], // 👈 softer color
                          fontWeight: FontWeight.w400, // optional
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[200]!, // focused bottom border color
                            width: 1.0, // focused bottom border width
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[200]!, // focused bottom border color
                            width: 1.0, // focused bottom border width
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,

                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          ),
                          onPressed: () {
                            print('Next');
                          },
                          child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 15), )
                      ),
                    ),

                    SizedBox(height: 10,),





                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [

                      Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.secondary
                          ),
                          padding: EdgeInsets.all(5),
                          child: Icon( Icons.groups, color: AppColors.primary, size: 30, )),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Bank Transfer Sucess Rate Monitor', style: TextStyle(fontSize: 15),),

                        ],
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        /// ✅ Tab bar + underline
                        SizedBox(
                          height: 40,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              double tabWidth = constraints.maxWidth / 2;
                              double underlineWidth = 40;


                              return Stack(
                                children: [
                                  Row(
                                    children: [
                                      tabButton("Recents ", 0),
                                      tabButton("Favourites ", 1),
                                    ],
                                  ),

                                  AnimatedBuilder(
                                    animation: _pageController,
                                    builder: (context, child) {
                                      double page = _pageController.hasClients
                                          ? _pageController.page ?? currentIndex.toDouble()
                                          : currentIndex.toDouble();

                                      return Positioned(
                                        bottom: 0,
                                        left: (page * tabWidth) + (tabWidth / 2) - (underlineWidth / 2),
                                        child: Container(
                                          width: 40,
                                          height: 3,
                                          color: AppColors.primary,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 12,),
                        /// ✅ PageView takes whole space
                        SizedBox(
                          height: 250,
                          child: PageView(
                            controller: _pageController,
                            onPageChanged: (index) => setState(() => currentIndex = index),
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: recentTransaction.map((person) {
                                      return peoples(person["name"]!, person["accNo"]!);
                                    }).toList(),
                                  ),
                                  SizedBox(height: 10,),
                                  Center(
                                    child: IntrinsicWidth(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey[100],
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,// Important!
                                          children:  [
                                            Text('View All ', style: TextStyle(color: Colors.grey,),),
                                            Icon( Icons.arrow_forward_ios, size: 9, color: Colors.grey, ),

                                          ],
                                        ),
                                      ),
                                    ),

                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: recentTransaction.map((person) {
                                      return peoples(person["name"]!, person["accNo"]!);
                                    }).toList(),
                                  ),
                                  SizedBox(height: 10,),
                                  Center(
                                    child: IntrinsicWidth(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey[100],
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,// Important!
                                          children:  [
                                            Text('View All ', style: TextStyle(color: Colors.grey,),),
                                            Icon( Icons.arrow_forward_ios, size: 9, color: Colors.grey, ),

                                          ],
                                        ),
                                      ),
                                    ),

                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),





                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Container( 
                      
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: AppColors.secondary
                   ),
                   padding: EdgeInsets.all(5),
                   child: Icon( Icons.groups, color: AppColors.primary, size: 30, )),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('See who else is using OPay', style: TextStyle(fontSize: 15),),
                        Text('527 of your contacts use OPay', style: TextStyle(color: Colors.grey, fontSize: 13),)
                      ],
                    )
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('More Events', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      event(
                        'Super Vouncher Package',
                        'Claim 15 Discounts with 99 on any Bill',
                        'assets/images/naira.png'
                      ),
                      event(
                          'Get Your Betting Voucher Now',
                          'Claim 15 Discounts with 99 on any Bill',
                          'assets/images/gift.png'
                      )
                    ],
                  )
              ),
            ),
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

  Widget peoples(String name, String accNo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [

          Icon( Icons.account_circle, color: Colors.grey[300], size: 50, ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(name),
              Text(accNo, style: TextStyle(color: Colors.grey),)
            ],
          )
        ],
      ),
    );
  }

  Widget event(String tittle, String desc, String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      child:  Row(
        children: [

          Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.secondary
              ),
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1), // clip image to match container
                child: Image.asset(
                  imagePath,
                  width: 25,    // specify width
                  height: 25,   // specify height
                  fit: BoxFit.cover, // cover ensures it fills the box
                ),
              ),),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(tittle, style: TextStyle(fontSize: 15),),
              Text(desc, style: TextStyle(color: Colors.grey, fontSize: 13),)
            ],
          )
        ],
      ),
    );
  }
}

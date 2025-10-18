import 'package:dashbord/layouts/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import '../layouts/dashboard_items.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../layouts/promo_notification_label.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // 👈 track selected nav item
  final PageController controller = PageController(viewportFraction: 0.85);

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
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF00B876),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 14),
                      Text(
                        "HI WALIYULLAHI",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.headset_mic),
                      SizedBox(width: 20),
                      Icon(Icons.qr_code_scanner, color: Colors.grey[600]),
                      SizedBox(width: 20),
                      Icon(Icons.notifications_none),
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
              padding: const EdgeInsets.all(.0),
              child: Container(
                color: Color(0xFFF8F8FB),
                child: Column(
                  children: [
                    // Balance section
                    SizedBox(height: 9),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 2,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        //height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(13),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.verified_user,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Available Balance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.unpublished,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₦19900 ',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Transaction History',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 2),

                                    Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                    top: 6.0,
                                    right: 12.0,
                                    left: 12.0,
                                    bottom: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Text(
                                    '+ Add money',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // SizedBox(height:),
                    // # Last Transaction
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.online_prediction,
                                        size: 18,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bunus from Data Purchase',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Oc 17th 17:16:16e',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "+₦100",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 2,
                                        horizontal: 8,
                                      ),
                                      child: Text(
                                        "Successful",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.online_prediction,
                                        size: 18,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bunus from Data Purchase',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Oc 17th 17:16:16e',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "+₦100",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 2,
                                        horizontal: 8,
                                      ),
                                      child: Text(
                                        "Successful",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 12.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //toOpay
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.view_agenda,
                                    color: AppColors.primary,
                                    size: 24,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'To OPay',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.account_balance,
                                    color: AppColors.primary,
                                    size: 24,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'To Bank',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.assessment,
                                    color: AppColors.primary,
                                    size: 24,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Withdraw',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 8,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //toOpay
                            Image.asset('assets/images/email.png', scale: 15),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Take Control, Stay Informed ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'Add your Email,get the latest from OPay ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: GridView.count(
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 12,
                          // mainAxisSpacing: ,
                          children: [
                            DashboardItem(
                              icon: Icons.lte_mobiledata,
                              label: "Airtime",
                            ),
                            DashboardItem(
                              icon: Icons.looks_two,
                              label: 'Data Bundle',
                            ),
                            DashboardItem(
                              icon: Icons.sports_basketball,
                              label: 'Betting',
                            ),
                            DashboardItem(icon: Icons.live_tv, label: 'TV'),
                            DashboardItem(
                              icon: Icons.volunteer_activism,
                              label: 'Financial',
                            ),
                            DashboardItem(
                              icon: Icons.clean_hands,
                              label: 'Loans',
                            ),
                            DashboardItem(
                              icon: Icons.perm_contact_calendar,
                              label: 'Check in',
                            ),
                            DashboardItem(
                              icon: Icons.view_module,
                              label: 'More',
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft, // 👈
                            end: Alignment.centerRight,
                            stops: [0.7, 1.0], // 👈
                            colors: [
                              AppColors.secondary, // Green
                              AppColors.secondary, // Light green
                            ],
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'One-Touch Loan!',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // Text('data'),
                                Expanded(
                                  child: DottedLine(
                                    dashColor: AppColors.grey,
                                    lineThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),


                            CarouselSlider(
                              options: CarouselOptions(
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: true,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 10),
                                  height: 70.0
                              ),
                              items: [PromoNotificationLabel(), PromoNotificationLabel(), PromoNotificationLabel()]
                            )
                          ],
                        )

                      ),
                    ),

                    //Icon Opay to Transfer To Bank, and Withdraw
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // 👇 Add your reusable bottom navigation bar
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);

          // 👉 Optional: handle navigation here
        },
      ),
    );
  }
}

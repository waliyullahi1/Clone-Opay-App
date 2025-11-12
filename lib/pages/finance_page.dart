import 'package:dashbord/layouts/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:dashbord/component/saving_page.dart';

import '../component/Loans_pages.dart';
class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.only(top: 14, left: 5, right: 4),
          color: Colors.white,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Finance",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.settings_outlined, color: Colors.black),
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: const Color(0xFFF8F8FB),
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  /// Balance




                  /// ✅ Tab Bar + Sliding Indicator Animation
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomLeft,

                        children: [
                          /// Label Ro
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => _controller.animateToPage(
                                  0,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                ),
                                child: Text(
                                  "Savings",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: currentIndex == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: currentIndex == 0
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 40,),
                              GestureDetector(
                                onTap: () => _controller.animateToPage(
                                  1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                ),
                                child: Text(
                                  "Loans",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: currentIndex == 1
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: currentIndex == 1
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /// ✅ Smooth SlidinLine
                          AnimatedBuilder(
                            animation: _controller,
                            builder: (_, __) {
                              double pageOffset = _controller.hasClients
                                  ? _controller.page ?? 0
                                  : 0;

                              /// Move underline smoothly: 0 → 1 page
                              double leftPosition =
                                  (screenWidth / 4.3) * pageOffset +
                                      (screenWidth / 34- 4);

                              return Positioned(
                                bottom: -5,
                                left: leftPosition,
                                child: Container(
                                  width: 40,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// ✅ Swipe Content
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: PageView(
                      controller: _controller,
                      onPageChanged: (index) =>
                          setState(() => currentIndex = index),
                      children: [
                        SingleChildScrollView(child: SavingPage()),
                        SingleChildScrollView(child: LoansPages()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const CustomBottomNav(currentIndex: 2),
    );
  }
}

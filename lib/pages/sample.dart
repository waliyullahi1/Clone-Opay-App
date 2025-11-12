import 'package:flutter/material.dart';

class SimpleTabSlidePage extends StatefulWidget {
  const SimpleTabSlidePage({super.key});

  @override
  State<SimpleTabSlidePage> createState() => _SimpleTabSlidePageState();
}

class _SimpleTabSlidePageState extends State<SimpleTabSlidePage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Tabs"), centerTitle: true),

      body: Column(
        children: [
          /// ✅ Tab titles + underline
          SizedBox(
            height: 50,
            child: LayoutBuilder(
              builder: (context, constraints) {
                double tabWidth = constraints.maxWidth / 2;

                return Stack(
                  children: [
                    Row(
                      children: [
                        tabButton("Settings", 0),
                        tabButton("Loans", 1),
                      ],
                    ),

                    /// ✅ Animated underline based on swipe position
                    AnimatedBuilder(
                      animation: _pageController,
                      builder: (context, child) {
                        double page = _pageController.hasClients
                            ? _pageController.page ?? currentIndex.toDouble()
                            : currentIndex.toDouble();

                        return Positioned(
                          bottom: 0,
                          left: page * tabWidth,
                          child: Container(
                            width: tabWidth,
                            height: 3,
                            color: Colors.blue,
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),

          /// ✅ Swipe pages
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => setState(() => currentIndex = index),
              children: const [
                Center(child: Text("Settings Page", style: TextStyle(fontSize: 24))),
                Center(child: Text("Loans Page", style: TextStyle(fontSize: 24))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tabButton(String text, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
              fontWeight: currentIndex == index ? FontWeight.bold : FontWeight.normal,
              color: currentIndex == index ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

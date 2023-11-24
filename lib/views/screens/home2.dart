import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/Controller/Controller.dart';
import 'package:my/views/components/globals/globals.dart';
import 'package:my/views/screens/ArenaPage.dart';
import 'package:my/views/screens/ClipPage.dart';
import 'package:my/views/screens/RewardPage.dart';
import 'package:my/views/screens/trendingPage.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  late PageController pageController;

  var c = Get.put(MyController());
  int selectedIndex = 0;

  List<Widget> allPages = [
    TrendingPage(),
    ClipPage(),
    RewardPage(),
    ArenaPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          backgroundColor: Globals.bg,
          // bottomNavigationBar: Padding(
          //   padding: const EdgeInsets.only(bottom: 10),
          //   child: CrystalNavigationBar(
          //     backgroundColor: Globals.bg,
          //     unselectedItemColor: Colors.white70,
          //     currentIndex: selectedIndex,
          //     onTap: (val) {
          //       setState(() {
          //         selectedIndex = val;
          //         pageController.animateToPage(selectedIndex,
          //             duration: Duration(milliseconds: 10),
          //             curve: Curves.linear);
          //       });
          //     },
          //     indicatorColor: Colors.white,
          //     // enableFloatingNavBar: false
          //     items: [
          //       CrystalNavigationBarItem(
          //         icon: Icons.home_filled,
          //         unselectedIcon: Icons.home_outlined,
          //         selectedColor: Colors.white,
          //       ),
          //       CrystalNavigationBarItem(
          //         icon: Icons.video_collection,
          //         unselectedIcon: Icons.video_collection_outlined,
          //         selectedColor: Colors.white,
          //       ),
          //       CrystalNavigationBarItem(
          //         icon: Icons.card_giftcard_rounded,
          //         unselectedIcon: Icons.card_giftcard_outlined,
          //         selectedColor: Colors.white,
          //       ),
          //       CrystalNavigationBarItem(
          //         icon: Icons.play_circle,
          //         unselectedIcon: Icons.play_circle_outline_outlined,
          //         selectedColor: Colors.white,
          //       ),
          //     ],
          //   ),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (val) {
              setState(() {
                selectedIndex = val;
                pageController.animateToPage(selectedIndex,
                    duration: Duration(milliseconds: 10), curve: Curves.linear);
              });
            },
            currentIndex: selectedIndex,
            unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 14),
            unselectedItemColor: Colors.white,
            backgroundColor: Globals.bg,
            fixedColor: Colors.white,
            unselectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Globals.bg,
                  icon: Icon(
                    Icons.trending_up_outlined,
                    color: Colors.white,
                  ),
                  label: "trending"),
              BottomNavigationBarItem(
                  backgroundColor: Globals.bg,
                  icon: Icon(
                    Icons.video_collection_outlined,
                    color: Colors.white,
                  ),
                  label: "Clips"),
              BottomNavigationBarItem(
                  backgroundColor: Globals.bg,
                  icon: Icon(
                    Icons.card_giftcard_outlined,
                    color: Colors.white,
                  ),
                  label: "Rewards"),
              BottomNavigationBarItem(
                  backgroundColor: Globals.bg,
                  icon: Icon(
                    Icons.play_circle_outline_outlined,
                    color: Colors.white,
                  ),
                  label: "Arena"),
            ],
          ),
          body: PageView(
            controller: pageController,
            onPageChanged: (val) {
              setState(() {
                selectedIndex = val;
              });
            },
            children: allPages,
          )),
    );
  }
}

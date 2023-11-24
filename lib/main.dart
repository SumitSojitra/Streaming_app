import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/views/screens/ClipPage.dart';
import 'package:my/views/screens/RulesPage.dart';
import 'package:my/views/screens/Splash_Screen.dart';
import 'package:my/views/screens/Stream2.dart';
import 'package:my/views/screens/home2.dart';
import 'package:my/views/screens/homepage.dart';
import 'package:my/views/screens/moreGoldPage.dart';
import 'package:my/views/screens/page2.dart';
import 'package:my/views/screens/page3.dart';
import 'package:my/views/screens/streamChat.dart';
import 'package:my/views/screens/yourRewardPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/page2',
          page: () => Page2(),
        ),
        GetPage(
          name: '/page3',
          page: () => Page3(),
        ),
        GetPage(
          name: '/main',
          page: () => mainPage(),
        ),
        GetPage(
          name: '/yourReward',
          page: () => YourRewardPage(),
        ),
        GetPage(
          name: '/rules',
          page: () => RulesPage(),
        ),
        GetPage(
          name: '/moreGold',
          page: () => MoreGoldPage(),
        ),
        GetPage(
          name: '/stream',
          page: () => StreamPage(),
        ),
        GetPage(
          name: '/allStream',
          page: () => AllStreamPage(),
        ),
        GetPage(
          name: '/ClipPage',
          page: () => ClipPage(),
        )
      ],
    ),
  );
}

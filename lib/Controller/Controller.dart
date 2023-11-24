import 'dart:async';

import 'package:get/get.dart';

class MyController extends GetxController {
  int selectIndex = 0;
  bool color = false;
  bool BorderChange(bool val) {
    return color = !val;
  }

  void ChangeIndex(int val) {
    selectIndex = val;
  }

  RxBool followS = false.obs;

  void ChangeFollowS() {
    followS.value = !followS.value;
  }
}

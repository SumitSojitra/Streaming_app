import 'dart:async';

import 'package:get/get.dart';

class MyController extends GetxController{



    @override
    void onInit() {
      super.onInit();
      Timer(Duration(seconds: 3), () {
        Get.toNamed("/home");
      });
    }
}
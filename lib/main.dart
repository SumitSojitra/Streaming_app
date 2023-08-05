import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/views/screens/Splash_Screen.dart';

void main(){
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,
  theme: ThemeData(
    useMaterial3: true,
  ),
  getPages:[GetPage(name: '/',page:()=> SplashScreen(),),],
  ),);

}
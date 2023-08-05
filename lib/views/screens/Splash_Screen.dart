import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:my/Controller/Controller.dart';



class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

   var c2=Get.put(MyController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MyController>(
        init: MyController(),
        builder: (controller){return Stack(
          alignment: Alignment.center,
          children: [Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xff1e1e1e),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 132,
                  width: 132,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                      )
                  ),
                ),
                Text("TwitchCon",style: GoogleFonts.inter(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                Text("Live Game Streaming",style: GoogleFonts.inter(fontSize: 24,color: Colors.white),)
              ],
            ),

          ],
        );},
      )
    );
  }
}

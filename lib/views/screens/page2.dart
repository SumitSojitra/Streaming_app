import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Globals.bg,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/chat1.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "CHAT WITH STREAMERS",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffCA6100)),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  "WELCOME TO TWITCHCON 👋",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Continue with",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/google.png")),
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/facebook.png")),
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("page3");
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/call.png"),
                            ),
                            // color: Globals.bg37,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By continuing you agree to",
                      style: GoogleFonts.inter(
                          fontSize: 12, color: Globals.grey81),
                    ),
                    Text(
                      "Terms & Condition.",
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

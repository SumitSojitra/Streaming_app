import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/Controller/Controller.dart';
import 'package:my/views/components/globals/globals.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool color1 = false;
  bool color2 = false;
  bool color3 = false;
  bool color4 = false;
  var c1 = Get.put(MyController());
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What brings you to TwitchCon?",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Select as many as you like",
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                //watch streams
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = !color1;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color:
                                color1 ? Globals.purple : Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff373737)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Watch Streams",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                //start streams
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color2 = !color2;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color:
                                color2 ? Globals.purple : Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff373737)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/stream.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Start Streams",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                //play arena
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color3 = !color3;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color:
                                color3 ? Globals.purple : Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff373737)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/video-game.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Play Arena Mini Games",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                //win rewards
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color4 = !color4;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color:
                                color4 ? Globals.purple : Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff373737)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/reward.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Win Rewards & Giveaways",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/page2");
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Globals.purple,
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Text(
                      "CONTINUE",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

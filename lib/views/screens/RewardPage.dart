import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Globals.bg,
        body: Padding(
          padding: const EdgeInsets.only(left: 14, top: 4),
          child: Column(
            children: [
              //top
              Container(
                height: 60,
                width: double.infinity,
                color: Globals.bg,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      foregroundImage: AssetImage("assets/images/rega.jpg"),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"))),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "TwitchCon",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff414141)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.yellow, shape: BoxShape.circle),
                            child: Text(
                              new String.fromCharCodes(new Runes('\u0024')),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ),
                          Text(
                            "3.14 K",
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gold Balance",
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "3.1K",
                            style: GoogleFonts.inter(
                                fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 18,
                            width: 18,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.yellow, shape: BoxShape.circle),
                            child: Text(
                              new String.fromCharCodes(new Runes('\u0024')),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/moreGold");
                    },
                    child: Container(
                      height: 25,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Globals.yello),
                          borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.center,
                      child: Text(
                        "Earn more Gold",
                        style: GoogleFonts.inter(
                            fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("assets/images/giftCard.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/yourReward");
                          },
                          child: Container(
                            height: 34,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(color: Globals.yello),
                                borderRadius: BorderRadius.circular(4)),
                            alignment: Alignment.center,
                            child: Text(
                              "YOUR REWARDS",
                              style: GoogleFonts.inter(
                                  fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/rules");
                          },
                          child: Container(
                            height: 34,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(color: Globals.yello),
                                borderRadius: BorderRadius.circular(4)),
                            alignment: Alignment.center,
                            child: Text(
                              "RULES",
                              style: GoogleFonts.inter(
                                  fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Rewards on your path",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/amazon.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "8.2K",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    new String.fromCharCodes(
                                        new Runes('\u0024')),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/100.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "16.2K",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    new String.fromCharCodes(
                                        new Runes('\u0024')),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/swigy.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "4.6K",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    new String.fromCharCodes(
                                        new Runes('\u0024')),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

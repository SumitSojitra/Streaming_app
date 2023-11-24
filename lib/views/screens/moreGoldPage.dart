import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class MoreGoldPage extends StatefulWidget {
  const MoreGoldPage({super.key});

  @override
  State<MoreGoldPage> createState() => _MoreGoldPageState();
}

class _MoreGoldPageState extends State<MoreGoldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.bg,
      appBar: AppBar(
        backgroundColor: Globals.bg,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Wallet and Tasks",
          style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Text(
                    "Gold",
                    style: GoogleFonts.inter(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "3125",
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
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
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete your tasks to earn Gold \nand redeem rewards!",
                    style: GoogleFonts.inter(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 168,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Globals.purple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TODAY’S WATCH PROGRESS",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "26/400",
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
                                  Spacer(),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/trophy.png"),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Reset in 00:38:33",
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 108,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Globals.purple,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "WATCH STREAM",
                                  style: GoogleFonts.inter(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 168,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Globals.purple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "YOU’RE ON YOUR FOREVER STREAK RUM",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Claim coin every day,else your \nStreak",
                                    style: GoogleFonts.inter(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  // Container(
                                  //   height: 18,
                                  //   width: 18,
                                  //   alignment: Alignment.center,
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.yellow,
                                  //       shape: BoxShape.circle),
                                  //   child: Text(
                                  //     new String.fromCharCodes(
                                  //         new Runes('\u0024')),
                                  //     style: TextStyle(
                                  //         fontSize: 14,
                                  //         fontWeight: FontWeight.bold,
                                  //         color: Colors.black45),
                                  //   ),
                                  // ),
                                  Spacer(),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/50.png"),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Come back tomorrow \nfor 500 Coin",
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 108,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Globals.purple,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "PAST 7 DAYS",
                                  style: GoogleFonts.inter(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 168,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Globals.purple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PLAY ARENA GAMES",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Win matches and earn ",
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
                                  Spacer(),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/video-game.png",
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "",
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 108,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Globals.purple,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "PLAY ARENA",
                                  style: GoogleFonts.inter(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 168,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Globals.purple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "REFER A FRIEND AND EARN GOLD",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Every successfull referal \nearns you a Coin",
                                    style: GoogleFonts.inter(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  // Container(
                                  //   height: 18,
                                  //   width: 18,
                                  //   alignment: Alignment.center,
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.yellow,
                                  //       shape: BoxShape.circle),
                                  //   child: Text(
                                  //     new String.fromCharCodes(
                                  //         new Runes('\u0024')),
                                  //     style: TextStyle(
                                  //         fontSize: 14,
                                  //         fontWeight: FontWeight.bold,
                                  //         color: Colors.black45),
                                  //   ),
                                  // ),
                                  Spacer(),
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/share.png"),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "",
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 108,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Globals.purple,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "REFER",
                                  style: GoogleFonts.inter(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

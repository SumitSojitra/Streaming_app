import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/model/model.dart';
import 'package:my/model/topClipsModel.dart';
import 'package:my/views/components/globals/globals.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Globals.bg,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Gap(6),
              //top line
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 8),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Globals.bg,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            foregroundImage:
                                AssetImage("assets/images/rega.jpg"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/logo.png"))),
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
                    ],
                  ),
                ),
              ),
              //
              GestureDetector(
                onTap: () {
                  Get.toNamed('/stream');
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/scout.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),

              ///
              Padding(
                padding: const EdgeInsets.only(
                    left: 14, right: 16, top: 8, bottom: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      foregroundImage: AssetImage("assets/images/scoutDp.png"),
                    ),
                    Gap(6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "sc0utOP",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/verified.png"))),
                            )
                          ],
                        ),
                        Text(
                          "regular streamer day-9999",
                          style: GoogleFonts.inter(
                              fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              ///
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8),
                  child: Text(
                    "Top Clips on TwitchCon",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                  height: 166,
                  child: FutureBuilder(
                    future:
                        rootBundle.loadString("lib/views/json/topclips.json"),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        String data = snapshot.data!;
                        Map decodedData = jsonDecode(data);
                        List myData = decodedData['data'];

                        List<topC> clips = myData
                            .map(
                              (e) => topC.fromMap(data: e),
                            )
                            .toList();

                        return GestureDetector(
                          onTap: () {
                            Get.toNamed('/ClipPage');
                          },
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, i) => Row(
                              children: [
                                Gap(16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(clips[i].img),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 24,
                                            foregroundImage:
                                                AssetImage(clips[i].dp),
                                          ),
                                          Gap(6),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    clips[i].title,
                                                    style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                clips[i].subtitle,
                                                style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // Gap(6),
                              ],
                            ),
                          ),
                        );
                      }
                      return LinearProgressIndicator();
                    },
                  )),
              Container(
                  height: 790,
                  child: FutureBuilder(
                    future:
                        rootBundle.loadString("lib/views/json/topstrean.json"),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        String data = snapshot.data!;
                        Map decodedData = jsonDecode(data);
                        List myData = decodedData['data'];

                        List<topS> topdata =
                            myData.map((e) => topS.fromMap(data: e)).toList();

                        return ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, i) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/allStream',
                                      arguments: topdata[i]);
                                },
                                child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(topdata[i].img),
                                          fit: BoxFit.cover)),
                                ),
                              ),

                              ///
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      foregroundImage:
                                          AssetImage(topdata[i].dp),
                                    ),
                                    Gap(6),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              topdata[i].title,
                                              style: GoogleFonts.inter(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/verified.png"))),
                                            )
                                          ],
                                        ),
                                        Text(
                                          topdata[i].subtitle,
                                          style: GoogleFonts.inter(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (snapshot.hasError) {}
                      return CircularProgressIndicator();
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

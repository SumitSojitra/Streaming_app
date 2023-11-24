import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:my/views/components/videoWidget/clipWidget.dart';
import 'package:my/views/components/videoWidget/videoWidget.dart';
import 'package:video_player/video_player.dart';

import '../../model/clipsModel.dart';
import '../components/globals/globals.dart';

class ClipPage extends StatefulWidget {
  const ClipPage({super.key});

  @override
  State<ClipPage> createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.bg,
      body: Column(
        children: [
          Gap(4),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 14, top: 8),
              child: Container(
                height: 60,
                width: double.infinity,
                color: Globals.bg,
                child: Column(
                  children: [
                    Row(
                      children: [
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
                          "Clips",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        // Spacer(),
                        // Container(
                        //   height: 30,
                        //   width: 70,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(15),
                        //       color: Color(0xff414141)),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Container(
                        //         height: 18,
                        //         width: 18,
                        //         alignment: Alignment.center,
                        //         decoration: BoxDecoration(
                        //             color: Colors.yellow, shape: BoxShape.circle),
                        //         child: Text(
                        //           new String.fromCharCodes(new Runes('\u0024')),
                        //           style: TextStyle(
                        //               fontSize: 14,
                        //               fontWeight: FontWeight.bold,
                        //               color: Colors.black45),
                        //         ),
                        //       ),
                        //       Text(
                        //         "3.14 K",
                        //         style: GoogleFonts.inter(
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.orange),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: Icon(
                        //     Icons.search,
                        //     color: Colors.white,
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 12,
              child: Container(
                color: Colors.teal,
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    Container(
                        child: FutureBuilder(
                      future:
                          rootBundle.loadString("lib/views/json/clips.json"),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          String data = snapshot.data!;
                          Map decodedData = jsonDecode(data);
                          List mydata = decodedData['data'];

                          List<Clips> clip = mydata
                              .map((e) => Clips.fromMap(data: e))
                              .toList();
                          return ListView.builder(
                            itemCount: clip.length,
                            itemBuilder: (context, i) => Stack(
                              children: [
                                Container(
                                  child: ClipWidget(videoUrl: clip[i].clip),
                                ),
                                Positioned(
                                  top: 600,
                                  left: 10,
                                  child: Text(
                                    clip[i].dis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    )),
                    Positioned(
                      top: 600,
                      left: 320,
                      child: LikeButton(
                        circleColor: const CircleColor(
                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: const BubblesColor(
                          dotPrimaryColor: Colors.pink,
                          dotSecondaryColor: Colors.white,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.favorite,
                            size: 30,
                            color: isLiked ? Colors.red : Colors.grey,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

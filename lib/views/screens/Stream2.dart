import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/Controller/Controller.dart';
import 'package:my/model/model.dart';
import 'package:my/views/components/globals/globals.dart';
import 'package:my/views/components/videoWidget/videoWidget.dart';

class AllStreamPage extends StatefulWidget {
  const AllStreamPage({super.key});

  @override
  State<AllStreamPage> createState() => _AllStreamPageState();
}

class _AllStreamPageState extends State<AllStreamPage> {
  @override
  Widget build(BuildContext context) {
    var myController = Get.put(MyController());

    TextEditingController chatController = TextEditingController();

    topS data = ModalRoute.of(context)!.settings.arguments as topS;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Globals.bg,
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.yellow,
            child: VideoWidget(videoUrl: data.video),
          ),
          Container(
            width: 393,
            height: 62,
            color: Colors.grey.shade700,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 14, right: 16, top: 8, bottom: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    foregroundImage: AssetImage(data.dp),
                  ),
                  Gap(6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${data.title}",
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
                        data.subtitle,
                        style:
                            GoogleFonts.inter(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  ////
                  Spacer(),
                  Obx(
                    () => SizedBox(
                      width: 80,
                      child: AspectRatio(
                        aspectRatio: 208 / 71,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 4),
                                color: const Color(0x4960F9).withOpacity(.3),
                                spreadRadius: 4,
                                blurRadius: 50)
                          ]),
                          child: MaterialButton(
                            onPressed: () {
                              myController.ChangeFollowS();
                            },
                            splashColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                //gradient:
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/finance_app_2%2FbuttonBackgroundSmall.png?alt=media&token=fa2f9bba-120a-4a94-8bc2-f3adc2b58a73"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(36),
                              ),
                              child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 88.0,
                                      minHeight:
                                          36.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: (myController.followS.value)
                                      ? Text("Following",
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300))
                                      : Text("Follow",
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ////
                ],
              ),
            ),
          ),
          ////
          SingleChildScrollView(
            child: Container(
              height: 410,
              // color: Colors.red,
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                  itemCount: Globals.chats.length,
                  itemBuilder: (context, i) => Row(
                        children: [
                          CircleAvatar(radius: 14),
                          Text(
                            Globals.chats[i],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
            ),
          ),
          ////
          // Spacer(),
          SingleChildScrollView(
            child: Container(
              height: 66,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(200.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 6, // soften the shadow
                      spreadRadius: 3, //end the shadow
                      offset: Offset(
                        6.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ]),
              child: TextField(
                controller: chatController,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          Globals.chats.add(chatController.text);
                          chatController.clear();
                        });
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white60,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Chat here...',
                    hintStyle: TextStyle(color: Colors.white60)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

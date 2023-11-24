import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class YourRewardPage extends StatefulWidget {
  const YourRewardPage({super.key});

  @override
  State<YourRewardPage> createState() => _YourRewardPageState();
}

class _YourRewardPageState extends State<YourRewardPage> {
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
          "Rewards History",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  width: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/amazon.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "COMPLETED",
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.green),
                  ),
                ),
                Container(
                  height: 140,
                  width: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/amazon.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "COMPLETED",
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  width: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/100.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "COMPLETED",
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.green),
                  ),
                ),
                Container(
                  height: 140,
                  width: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/100.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "COMPLETED",
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.green),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

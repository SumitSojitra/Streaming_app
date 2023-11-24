import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class RulesPage extends StatefulWidget {
  const RulesPage({super.key});

  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
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
          "Rewards Rules",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Rewards Policy",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "To enroll in TwitchCon Rewards, download the El Pollo TwitchCon mobile app (the “App”) to your Android™ or iPhone® device. Follow the prompts to create an account. After you create your account, you can immediately begin using the App and earning points. Each mobile device can only have one TwitchCon Rewards account. In addition, you may only have one TwitchCon Rewards account. If you have multiple Loco Rewards accounts, all of your accounts may be deactivated and you may be banned from further participation in TwitchCon Rewards. You are responsible for all transactions associated with your account. Accounts with no new transactional activity within any 365-day period will be automatically deactivated and all points associated with such accounts will be permanently forfeited.",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

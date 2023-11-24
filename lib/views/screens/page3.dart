import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my/views/components/globals/globals.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Globals.bg,
          child: Column(
            children: [
              SizedBox(
                height: 205,
              ),
              Text(
                "Enter 4 digits OTP",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "4 digits OTP is sent to 9090908876",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Globals.grey81),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Globals.bg37),
                    alignment: Alignment.center,
                    child: Text(
                      "6",
                      style:
                          GoogleFonts.inter(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Globals.bg37),
                    alignment: Alignment.center,
                    child: Text(
                      "2",
                      style:
                          GoogleFonts.inter(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Globals.bg37),
                    alignment: Alignment.center,
                    child: Text(
                      "2",
                      style:
                          GoogleFonts.inter(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Globals.bg37),
                    alignment: Alignment.center,
                    child: Text(
                      "5",
                      style:
                          GoogleFonts.inter(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 68,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/main");
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Globals.purple,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    "VERIFY",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

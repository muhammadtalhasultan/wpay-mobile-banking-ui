import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';

class GetStart extends StatelessWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 190.h, left: 8.w),
              child: Image.asset("images/Illustrationwelcome.png")),
          Padding(
            padding: EdgeInsets.only(top: 589.h, left: 63.w),
            child: Text(
              "Welcome to Wpay",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 636.h, left: 16.w),
            child: Text(
                "Voila! You have successfuly created your \n                             account.",
                style: GoogleFonts.dmSans(
                    fontSize: 18.sp, color: Colors.white.withOpacity(0.7))),
          ),
          Padding(
            padding: EdgeInsets.only(top: 726.h, left: 16.w),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4CD080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 130.w, vertical: 18.h)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const Home(), type: PageTransitionType.fade));
                },
                child: Text("Get Started", style: TextStyle(fontSize: 16.sp))),
          ),
        ],
      ),
    );
  }
}

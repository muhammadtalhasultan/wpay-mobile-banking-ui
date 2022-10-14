import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'face_verify_page.dart';

class FaceID extends StatelessWidget {
  final bool home;
  const FaceID(this.home);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 107.w, top: 66.h),
          child: Text(
            "Face ID Verification",
            style: GoogleFonts.dmSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 16.w, top: 60.h),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(width: 2, color: Colors.grey)),
                child: const Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(left: 18.w, top: 124.h),
          child: Text(
            "Please put your phone in front of your\nface",
            style: GoogleFonts.dmSans(
                fontSize: 18.sp, color: Colors.white.withOpacity(0.7)),
          ),
        ),
        Center(
          child: Image.asset("images/Face Detection.png"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 726.h, left: 14.w),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff4CD080),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 120.w, vertical: 18.h)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: home
                            ? const FaceIDverifiy(true)
                            : const FaceIDverifiy(false),
                        type: PageTransitionType.fade));
              },
              child: Text("Scan My Face", style: TextStyle(fontSize: 16.sp))),
        ),
      ]),
    );
  }
}

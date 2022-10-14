import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'phone_code_page.dart';

class Phonenumber extends StatefulWidget {
  const Phonenumber({Key? key}) : super(key: key);

  @override
  State<Phonenumber> createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  String text = "(480) 555-0103";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: Image.asset("images/Background.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 87.w, top: 66.h),
              child: Text(
                "Continue with Phone",
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
              padding: EdgeInsets.only(top: 124.h, left: 16.w),
              child: Text(
                "Enter your phone number to receive a \npin code to sign up.",
                style: GoogleFonts.dmSans(
                  fontSize: 18.sp,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h, top: 237.h),
              child: Image.asset("images/Country Code.png"),
            ),
            Padding(
                padding: EdgeInsets.only(top: 240.h, left: 100.w),
                child: Text(
                  text,
                  style:
                      GoogleFonts.dmSans(color: Colors.white, fontSize: 20.sp),
                )),
            Padding(
              padding: EdgeInsets.only(top: 272.h, left: 100.w, right: 30.w),
              child: const Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 369.h, left: 16.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 130.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: PhoneCode(
                              number: text,
                            ),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Send Code", style: TextStyle(fontSize: 16.sp))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 447.h),
              child: Container(
                width: 400.w,
                height: 365.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r))),
                child: Stack(
                  children: [
                    buttons(
                      "1",
                      Theme.of(context).primaryColor,
                      97.0.h,
                      97.0.w,
                      0.0,
                      0.0,
                      15.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "2",
                      Theme.of(context).primaryColor,
                      97.0.h,
                      97.0.w,
                      0.0,
                      0.0,
                      135.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "3",
                      Theme.of(context).primaryColor,
                      97.0.h,
                      97.0.w,
                      0.0,
                      0.0,
                      270.0.w,
                      0.0,
                      30.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 30.w, top: 85.h),
                      child: const Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 95.h),
                      child: Transform.rotate(
                        angle: 90 * pi / 180,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 30.w,
                            right: 30.w,
                            top: 160.h,
                          ),
                          child: const Divider(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 110.h),
                      child: Transform.rotate(
                        angle: 1.5555,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.w, right: 30.w, bottom: 124.h),
                          child: const Divider(),
                        ),
                      ),
                    ),
                    buttons(
                      "4",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      90.0.h,
                      0.0,
                      15.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "5",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      90.0.h,
                      0.0,
                      135.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "6",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      90.0.h,
                      0.0,
                      270.0.w,
                      0.0,
                      30.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 30.w, top: 175.h),
                      child: const Divider(),
                    ),
                    buttons(
                      "7",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      180.0.h,
                      0.0,
                      15.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "8",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      180.0.h,
                      0.0,
                      135.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "9",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      180.0.h,
                      0.0,
                      270.0.w,
                      0.0,
                      30.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 30.w, top: 260.h),
                      child: const Divider(),
                    ),
                    buttons(
                      ".",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      260.0.h,
                      0.0,
                      15.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    buttons(
                      "0",
                      Theme.of(context).primaryColor,
                      97.0,
                      97.0,
                      260.0.h,
                      0.0,
                      135.0.w,
                      0.0,
                      30.0,
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 250.w, top: 270.h),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            text = "";
                          });
                        },
                        child: Image.asset(
                          "images/Delete.png",
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buttons(
      String btnText,
      Color color,
      double height,
      double width,
      double mtop,
      double mbottom,
      double mleft,
      double mright,
      double fontSize) {
    // buttons build
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(
          left: mleft, top: mtop, right: mright, bottom: mbottom),
      child: TextButton(
        onPressed: () {
          // text = "";
          setState(() {
            text += btnText;
          });
        },
        child: Text(
          btnText,
          style: GoogleFonts.dmSans(
              fontSize: fontSize,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

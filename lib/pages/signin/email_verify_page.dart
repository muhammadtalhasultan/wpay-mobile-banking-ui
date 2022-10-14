import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'face_id_page.dart';

class EmailVerifiy extends StatefulWidget {
  const EmailVerifiy({Key? key}) : super(key: key);

  @override
  State<EmailVerifiy> createState() => _EmailVerifiyState();
}

class _EmailVerifiyState extends State<EmailVerifiy> {
  final TextEditingController _controller = TextEditingController(text: "3137");

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
              padding: EdgeInsets.only(left: 107.w, top: 66.h),
              child: Text(
                "Verify Your Email",
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
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Please enter 4 digit code sent to \n",
                        style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            color: Colors.white.withOpacity(0.7))),
                    TextSpan(
                        text: "bianca@exxample.com",
                        style: GoogleFonts.dmSans(
                            fontSize: 18.sp, color: const Color(0xffFFAE58))),
                  ]),
                )),
            Padding(
              padding: EdgeInsets.only(top: 229.h, left: 79.w, right: 80.w),
              child: PinCodeTextField(
                  controller: _controller,
                  textStyle:
                      GoogleFonts.dmSans(fontSize: 32.sp, color: Colors.white),
                  pinTheme: PinTheme(
                      inactiveColor: Colors.white, activeColor: Colors.white),
                  appContext: context,
                  length: 4,
                  onChanged: (vale) {}),
            ),
            Padding(
                padding: EdgeInsets.only(top: 330.h, left: 65.w),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Didn't receive any code? ",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Colors.white.withOpacity(0.7))),
                    TextSpan(
                      text: "Resend Code",
                      style: GoogleFonts.dmSans(
                          decoration: TextDecoration.underline,
                          fontSize: 14.sp,
                          color: const Color(0xff4CD080)),
                    ),
                  ]),
                )),
            Padding(
              padding: EdgeInsets.only(top: 369.h, left: 14.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 140.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          child: const FaceID(false),
                          type: PageTransitionType.fade,
                        ));
                  },
                  child: Text("Continue", style: TextStyle(fontSize: 16.sp))),
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                      Colors.white,
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
                          _controller.clear();
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
          // calculation(btnText);
          setState(() {
            _controller.text += btnText;
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'add_card_success_page.dart';

class AddCardConfirm extends StatefulWidget {
  const AddCardConfirm({Key? key}) : super(key: key);

  @override
  State<AddCardConfirm> createState() => _AddCardConfirmState();
}

class _AddCardConfirmState extends State<AddCardConfirm> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0.w),
            child: Image.asset("images/Background.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 85.h),
            child: Container(
              width: 375.w,
              height: 750.h,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h, left: 163.w),
            child: Image.asset(
              "images/home_indicator.png",
              color: Theme.of(context).backgroundColor.withOpacity(0.1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 95.w, top: 125.h),
            child: Text("Add Card Confirm",
                style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 166.h),
            child: Text("Your card",
                style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.sp,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 196.h, left: 23.w),
            child: SvgPicture.asset("images/Cardbinaca.svg"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 415.h, left: 16),
            child: Container(
              width: 343.w,
              height: 52.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xff4CD080).withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    "images/Warning.svg",
                    color: const Color(0xff4CD080),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text("Top up using any credit card just cost 2%",
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp, color: const Color(0xff4CD080)))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 483.h, left: 16),
            child: Container(
              width: 343.w,
              height: 72.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xff4CD080).withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    "images/Group 150.svg",
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text("Automatically activate after\nopening an account",
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp, color: const Color(0xff4CD080))),
                  SizedBox(
                    width: 45.w,
                  ),
                  FlutterSwitch(
                    width: 40.w,
                    height: 22.h,
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                    activeColor: const Color(0xff4CD080),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 726.h, left: 13.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Theme.of(context).backgroundColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 55.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Theme.of(context).primaryColor,
                      )))),
          Padding(
              padding: EdgeInsets.only(top: 726.h, left: 195.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const AddCardSuccess(),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Add Card", style: TextStyle(fontSize: 16.sp)))),
        ],
      ),
    );
  }
}

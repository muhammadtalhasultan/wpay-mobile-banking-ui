import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../signin/confirm_password_page.dart';

class PaymentTransaction extends StatelessWidget {
  const PaymentTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
            ),
            child: Image.asset("images/Background.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 81.w, top: 66.h),
            child: Text(
              "Summary Transaction",
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
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: const Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 319.w),
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                "images/Help.png",
                color: Colors.white,
                width: 64.w,
                height: 38.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 147.w, top: 140.h),
            child: Image.asset("images/Startboxicon.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 86.w, top: 236.h),
            child: Text("Starbucks Coffee",
                style:
                    GoogleFonts.dmSans(fontSize: 24.sp, color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 106.w, top: 278.h),
            child: Text("Payment on Dec 2, 2020",
                style: GoogleFonts.dmSans(
                    fontSize: 14.sp, color: const Color(0xffFFAE58))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 118.w, top: 338.h),
            child: Text("\$15.00",
                style: GoogleFonts.dmSans(
                    fontSize: 48.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 421.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 52.h,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.sp)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 17.5.w,
                  ),
                  Image.asset("images/warning.png"),
                  SizedBox(
                    width: 9.5.w,
                  ),
                  Text("Payment fee \$2 has been applied",
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp, color: Colors.white))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 552.h,
            ),
            child: Container(
              width: 375.w,
              height: 260.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 568.h, left: 164.w),
            child: Image.asset("images/Home Indicator.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 589.h, left: 16.w),
            child: Text("Choose Cards",
                style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 630.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 72.h,
              padding: EdgeInsets.only(
                left: 16.w,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0x0fff2ff2)),
              child: Row(
                children: [
                  Image.asset("images/Mask Group.png"),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Wally Virtual Card",
                          style: GoogleFonts.dmSans(
                              color: Theme.of(context).primaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text("0318-1608-2105",
                          style: GoogleFonts.dmSans(
                              fontSize: 12.sp, color: Colors.grey))
                    ],
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Image.asset("images/Iconnavbottom.png",
                      width: 30.w, height: 30.h, color: const Color(0xff105D38))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 726.h, left: 10.w),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4CD080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 121.w, vertical: 18.h)),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const ConfirmPasswordPage(),
                          type: PageTransitionType.fade));
                },
                child:
                    Text("Proceed to Pay", style: TextStyle(fontSize: 16.sp))),
          ),
        ],
      ),
    );
  }
}

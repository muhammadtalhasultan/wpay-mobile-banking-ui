import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../signin/face_id_page.dart';

class BankConfirmation extends StatelessWidget {
  const BankConfirmation({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(left: 106.w, top: 66.h),
            child: Text(
              "Confirm Transfer",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130.h, left: 150.w),
            child: Image.asset("images/Avatar2.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 236.h, left: 103.w),
            child: Text(
              "Dianna Russell",
              style: GoogleFonts.dmSans(
                  fontSize: 24.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 274.h, left: 136.w),
            child: Text(
              "5150-1094-1012",
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 298.h, left: 108.w),
            child: Text(
              "Transfer on Dec 2, 2020",
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                color: const Color(0xffFFAE58),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 358.h, left: 97.w),
            child: Text(
              "\$132.00",
              style: GoogleFonts.dmSans(
                  fontSize: 48.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 441.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 72.h,
              padding: EdgeInsets.only(top: 15.h),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("images/Warning.svg"),
                  SizedBox(
                    width: 9.w,
                  ),
                  Text(
                      "Transfer made to bank account could take\n a few minutes.",
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp, color: Colors.white)),
                ],
              ),
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
            padding: EdgeInsets.only(top: 552.h),
            child: Container(
              width: 375.w,
              height: 269.h,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 568.h, left: 163.w),
            child: Image.asset(
              "images/home_indicator.png",
              color: Theme.of(context).backgroundColor.withOpacity(0.1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 589.h, left: 16.w),
            child: Text("Choose Cards",
                style: GoogleFonts.dmSans(
                    fontSize: 18.sp, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 630.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 72.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Theme.of(context).backgroundColor.withOpacity(0.1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 646.h, left: 32.w),
            child: Image.asset("images/mastercard.jpg"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 646.h, left: 96.w),
            child: Text("Mastercard",
                style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14.sp,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 670.h, left: 96.w),
            child: Text("1956 •••• •••• 2356",
                style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.sp,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 654.h, left: 319.w),
            child: SvgPicture.asset(
              "images/navgitorbottome.svg",
              color: const Color(0xff105D38),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 726.h, left: 9.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 120.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const FaceID(true),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Transfer Money",
                      style: TextStyle(fontSize: 16.sp)))),
        ],
      ),
    );
  }
}

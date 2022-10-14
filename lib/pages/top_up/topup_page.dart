import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../transfer/credit_card_page.dart';
import 'topup_bank_page.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(left: 116.w, top: 66.h),
            child: Text(
              "Select Method",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 124.h),
            child: Text(
              "Select top up methods",
              style: GoogleFonts.dmSans(fontSize: 18.sp, color: Colors.white),
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
            padding: EdgeInsets.only(top: 173.h),
            child: Container(
              width: 375.w,
              height: 639.h,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Image.asset(
                    "images/Home Indicator.png",
                    color: Theme.of(context).backgroundColor.withOpacity(0.1),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 282.h, left: 16.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const TopUpBank(),
                        type: PageTransitionType.fade));
              },
              child: Container(
                width: 343.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Theme.of(context).backgroundColor.withOpacity(0.1),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 210.h, left: 16.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const CreditCard(),
                        type: PageTransitionType.fade));
              },
              child: Container(
                width: 343.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Theme.of(context).backgroundColor.withOpacity(0.1),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 298.h, left: 32.w),
              child: SvgPicture.asset("images/bankicon.svg")), //
          Padding(
              padding: EdgeInsets.only(top: 227.h, left: 28.w),
              child: SvgPicture.asset(
                "images/cardicon.svg",
                width: 26.w,
                height: 26.h,
              )),
          Padding(
            padding: EdgeInsets.only(top: 232.h, left: 328.w),
            child: const Icon(
              Icons.navigate_next,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 304.h, left: 328.w),
            child: const Icon(
              Icons.navigate_next,
              color: Colors.grey,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 227.h, left: 72.w),
              child: Text("Credit Card",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 299.h, left: 72.w),
              child: Text("Bank Transfer",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}

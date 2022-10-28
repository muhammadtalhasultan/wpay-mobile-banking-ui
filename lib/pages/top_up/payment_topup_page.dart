import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wpay/util/file_path.dart';

import '../home/home_page.dart';
import '../transfer/credit_card_page.dart';

class PaymentTopUp extends StatelessWidget {
  const PaymentTopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Image.asset(
            "images/Ribbons.png",
          ),
          Padding(
            padding: EdgeInsets.only(left: 105.w, top: 60.h),
            child: Text(
              "Payment Receipt",
              style: GoogleFonts.dmSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 20.w,
              top: 70.h,
              right: 20.w,
            ),
            child: SvgPicture.asset(
              FilePath.cardBackground,
              color: Theme.of(context).cardColor,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 136.h,
              left: MediaQuery.of(context).size.width / 2.7,
            ),
            child: SvgPicture.asset(FilePath.iconSuccess),
          ),
          Padding(
            padding: EdgeInsets.only(left: 84.w, top: 260.h),
            child: Text(
              "Payment Success",
              style: GoogleFonts.dmSans(
                fontSize: 24.sp,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w, top: 302.h),
            child: Text(
              "Your payment for Starbucks Coffee has\nbeen successfully done",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 136.w, top: 362.h),
            child: Text(
              "Total Payment",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 127.w, top: 388.h),
            child: Text(
              "\$132.00",
              style: GoogleFonts.dmSans(
                fontSize: 32.sp,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 435.h, left: 32.w, right: 32.w),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 9.0,
              dashColor: Theme.of(context).primaryColor,
              dashRadius: 0.0,
              dashGapLength: 8.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.w, top: 450.h),
            child: Text(
              "Top up destination",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 480.h, left: 32.w),
            child: Container(
              width: 311.w,
              height: 81.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    "images/Logo.svg",
                    width: 30.w,
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wally Virtual Card",
                        style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text("0318-1608-2105 . 3:02 PM",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 580.h, left: 40.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 130.w, vertical: 17.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const Home(),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Done", style: TextStyle(fontSize: 16.sp)))),
          Padding(
            padding: EdgeInsets.only(left: 113.w, top: 650.h),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const CreditCard(),
                        type: PageTransitionType.fade));
              },
              child: Text(
                "Top up more money",
                style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: const Color(0xff4CD080),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

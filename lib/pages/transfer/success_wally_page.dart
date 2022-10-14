import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';
import 'transfer_wally_page.dart';

class SuccessWally extends StatelessWidget {
  const SuccessWally({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Image.asset("images/Ribbons.png"),
          Padding(
            padding: EdgeInsets.only(left: 105.w, top: 60.h),
            child: Text(
              "Payment Receipt",
              style: GoogleFonts.dmSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 112.h),
              child: Image.asset(
                "images/Subtract.png",
                color: Theme.of(context).cardColor,
              )),
          Padding(
            padding: EdgeInsets.only(top: 136.h, left: 137),
            child: Image.asset("images/Icon Success.png"),
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
              "Your payment for Starbucks Coffee has\n               been successfully done",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
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
            padding: EdgeInsets.only(top: 435.h, left: 40.w),
            child: Image.asset("images/Divider.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w, top: 450.h),
            child: Text(
              "Recipient",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Theme.of(context).primaryColor,
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
                  Image.asset(
                    "images/Avatar2.png",
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dianna Russell",
                          style: GoogleFonts.dmSans(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text("5150-1094-1012 . 3:02 PM",
                          style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor,
                          ))
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
                      primary: const Color(0xff4CD080),
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
            padding: EdgeInsets.only(left: 110.w, top: 650.h),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const TransferWally(),
                        type: PageTransitionType.fade));
              },
              child: Text(
                "Transfer more money",
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

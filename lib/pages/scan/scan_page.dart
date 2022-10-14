import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../transfer/payment_transaction_page.dart';

class ScanQRCode extends StatelessWidget {
  const ScanQRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 131.w, top: 66.h),
            child: Text(
              "Scan to Pay",
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
            padding: EdgeInsets.only(top: 183.h, left: 45.w),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const PaymentTransaction(),
                          type: PageTransitionType.fade));
                },
                child: Image.asset("images/QR Code.png")),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 571.h,
            ),
            child: Container(
              width: 375.w,
              height: 241.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 579.h, left: 164.w),
            child: Image.asset("images/Home Indicator.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 600.h, left: 16.w),
            child: Text("Payment with QR Code",
                style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 633.h, left: 16.w),
            child: Text(
                "Hold the code inside the frame, it will be scanned \n automatically",
                style: GoogleFonts.dmSans(
                    fontSize: 14.sp, color: const Color(0xff8F92A1))),
          )
        ],
      ),
    );
  }
}

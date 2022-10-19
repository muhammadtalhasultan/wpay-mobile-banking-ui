import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'payment_topup_page.dart';

class AddCardSuccess extends StatelessWidget {
  const AddCardSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.h,
            padding: EdgeInsets.only(top: 230.h),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "images/Background.png",
                    ),
                    fit: BoxFit.cover),
                color: const Color(0xff105D38),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Image.asset("images/Cardss.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 107.w, top: 66.h),
            child: Text(
              "Your Credit Card",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 116.h),
            child: Text(
              "Your credit card has been\nsuccessfully added ",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 117.h, left: 311.w),
            child: Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xffFFAE58)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
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
              padding: EdgeInsets.only(top: 388.h, left: 16.w),
              child: Text("Card Settings",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
            padding: EdgeInsets.only(top: 432.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 56.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Theme.of(context).backgroundColor.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset("images/settingg.svg"),
                  SizedBox(
                    width: 17.w,
                  ),
                  Text("Set Limit",
                      style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 189.w,
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 504.h, left: 16.w),
            child: Container(
              width: 343.w,
              height: 56.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Theme.of(context).backgroundColor.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset("images/lookk.svg"),
                  SizedBox(
                    width: 17.w,
                  ),
                  Text("Lock Card",
                      style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 179.w,
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 726.h, left: 14.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 125.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const PaymentTopUp(),
                            type: PageTransitionType.fade));
                  },
                  child:
                      Text("Top Up Now", style: TextStyle(fontSize: 16.sp)))),
        ],
      ),
    );
  }
}

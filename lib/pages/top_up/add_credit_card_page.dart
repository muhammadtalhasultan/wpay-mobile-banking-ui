import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'scan_card_page.dart';

class AddCreditCard extends StatelessWidget {
  const AddCreditCard({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(left: 118.w, top: 66.h),
            child: Text(
              "Add New Card",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 124.h, left: 16.w),
            child: Text(
                "Fill in the fields below or use camera\n phone to scan card",
                style: GoogleFonts.dmSans(
                    fontSize: 18.sp, color: const Color(0xffF2F2F2))),
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
            padding: EdgeInsets.only(top: 198.h),
            child: Container(
              width: 375.w,
              height: 650.h,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 214.h, left: 163.w),
            child: Image.asset(
              "images/Home Indicator.png",
              color: Theme.of(context).backgroundColor.withOpacity(0.1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 235.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: 'Cardholder Name',
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              style: GoogleFonts.dmSans(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 273.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 299.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: 'Card Number',
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              style: GoogleFonts.dmSans(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 337.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 363.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: 'Expiry Date',
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              style: GoogleFonts.dmSans(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 401.h, left: 16.w, right: 196.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 363.h, left: 194.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: '3-digit CVV',
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              style: GoogleFonts.dmSans(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 401.h, left: 194.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 427.h, left: 16.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const ScanCard(),
                        type: PageTransitionType.fade));
              },
              child: Container(
                width: 343.w,
                height: 80.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xff4CD080).withOpacity(0.1)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset("images/scanQr.svg"),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text("Scan your card",
                        style: GoogleFonts.dmSans(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 101.w,
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

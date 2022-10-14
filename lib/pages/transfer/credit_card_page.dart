import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';
import '../top_up/add_credit_card_page.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  final TextEditingController _controller =
      TextEditingController(text: "\$130.00");
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
            padding: EdgeInsets.only(top: 220.h, left: 35.w),
            child: SvgPicture.asset("images/Card.svg"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 71.w, top: 66.h),
            child: Text(
              "Top Up with Credit Card",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 124.h),
            child: Text(
              "Credit Card",
              style: GoogleFonts.dmSans(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 155.h),
            child: Text(
              "Choose your credit card",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130.h, left: 311.w),
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
            padding: EdgeInsets.only(top: 441.h, left: 135.w),
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
              ),
              style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 488.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 374.h, left: 16.w),
              child: Text("Set amount",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 403.h, left: 16.w),
              child: Text("How much would you like to transfer?",
                  style: GoogleFonts.dmSans(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ))),
          Padding(
            padding: EdgeInsets.only(top: 505.h, left: 46.w),
            child: InkWell(
              onTap: () => setState(() {
                _controller.text = "\$100.00";
              }),
              child: Container(
                alignment: Alignment.center,
                width: 87.w,
                height: 36.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xff4CD080).withOpacity(0.1)),
                child: Text(
                  "\$100.00",
                  style: GoogleFonts.dmSans(
                      fontSize: 14.sp, color: const Color(0xff4CD080)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 505.h, left: 141.w),
            child: InkWell(
              onTap: () => setState(() {
                _controller.text = "\$250.00";
              }),
              child: Container(
                width: 87.w,
                alignment: Alignment.center,
                height: 36.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xff4CD080).withOpacity(0.1)),
                child: Text(
                  "\$250.00",
                  style: GoogleFonts.dmSans(
                      fontSize: 14.sp, color: const Color(0xff4CD080)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 505.h, left: 238.w),
            child: InkWell(
              onTap: () => setState(() {
                _controller.text = "\$500.00";
              }),
              child: Container(
                alignment: Alignment.center,
                width: 87.w,
                height: 36.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xff4CD080).withOpacity(0.1)),
                child: Text(
                  "\$500.00",
                  style: GoogleFonts.dmSans(
                      fontSize: 14.sp, color: const Color(0xff4CD080)),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 742.h, left: 136.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const Home(), type: PageTransitionType.fade));
                },
                child: Text("Back to home",
                    style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(top: 664.h, left: 14.w),
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
                            child: const AddCreditCard(),
                            type: PageTransitionType.fade));
                  },
                  child:
                      Text("Top Up Now", style: TextStyle(fontSize: 16.sp)))),
        ],
      ),
    );
  }
}

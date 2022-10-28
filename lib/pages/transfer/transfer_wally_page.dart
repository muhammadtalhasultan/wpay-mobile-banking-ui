import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../signin/confirm_wally_page.dart';

class TransferWally extends StatefulWidget {
  const TransferWally({Key? key}) : super(key: key);

  @override
  State<TransferWally> createState() => _TransferWallyState();
}

class _TransferWallyState extends State<TransferWally> {
  final TextEditingController _controller =
      TextEditingController(text: "\$130.00");
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
            padding: EdgeInsets.only(left: 98.w, top: 66.h),
            child: Text(
              "Transfer with Wally",
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
              padding: EdgeInsets.only(left: 320.w, top: 60.h),
              child: InkWell(
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 124.h),
            child: Container(
              width: 375.w,
              height: 688.h,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140.h, left: 163.w),
            child: Image.asset(
              "images/home_indicator.png",
              color: Theme.of(context).backgroundColor.withOpacity(0.1),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 161.h, left: 16.w),
              child: Text("Contact",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
            padding: EdgeInsets.only(top: 206.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: 'Enter phone number',
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 244.h, left: 16.w, right: 80.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 202.h, left: 311.w),
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
              padding: EdgeInsets.only(top: 274.h, left: 16.w),
              child: Text("Recent",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 277.h, left: 263.w),
              child: Text("See all contact",
                  style: GoogleFonts.dmSans(
                      fontSize: 14.sp, color: const Color(0xff4CD080)))),
          Padding(
            padding: EdgeInsets.only(top: 320.h, left: 8.w),
            child: Image.asset(
              "images/Avatar2.png",
              width: 50.w,
              height: 50.h,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 317.h, left: 80.w),
              child: Text("Dianna Russell",
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 345.h, left: 80.w),
              child: Text("(480) 555-0103",
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12.sp,
                  ))),
          Padding(
            padding: EdgeInsets.only(
              top: 379.h,
              left: 16.w,
            ),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 396.h, left: 8.w),
            child: SvgPicture.asset(
              "images/Avatar3.svg",
              width: 50.w,
              height: 50.h,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 398.h, left: 80.w),
              child: Text("Cody Banks",
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 424.h, left: 80.w),
              child: Text("(406) 555-0120",
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12.sp,
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 468.h, left: 16.w),
              child: Text("Set amount",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
            padding: EdgeInsets.only(top: 535.h, left: 134.w),
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
            padding: EdgeInsets.only(top: 582.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 497.h, left: 16.w),
              child: Text("How much would you like to transfer?",
                  style: GoogleFonts.dmSans(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ))),
          Padding(
            padding: EdgeInsets.only(top: 599.h, left: 46.w),
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
            padding: EdgeInsets.only(top: 599.h, left: 141.w),
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
            padding: EdgeInsets.only(top: 599.h, left: 238.w),
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
              padding: EdgeInsets.only(top: 726.h, left: 13.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 140.w, vertical: 18.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const Confirmwally(),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Continue", style: TextStyle(fontSize: 16.sp)))),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'setup_new_password_page.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 111.w, top: 66.h),
            child: Text(
              "Reset Password",
              style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
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
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Icon(Icons.navigate_before,
                      color: Theme.of(context).primaryColor),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 124.h, left: 16.w),
            child: Text(
              "Enter your email and we will send you a\nlink to rest your password",
              style: GoogleFonts.dmSans(
                  fontSize: 18.sp, color: const Color(0xff8F92A1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 198.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIconColor: Colors.grey,
                hintText: 'Your Email',
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
            padding: EdgeInsets.only(top: 236.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 730.h, left: 16.w),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4CD080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 150.w, vertical: 18.h)),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const SetPassword(),
                          type: PageTransitionType.fade));
                },
                child: Text("Send", style: TextStyle(fontSize: 16.sp))),
          ),
        ],
      ),
    ));
  }
}

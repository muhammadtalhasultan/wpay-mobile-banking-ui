import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'phone_number_page.dart';

class NameRegister extends StatelessWidget {
  const NameRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 107.w, top: 66.h),
              child: Text(
                "Enter Your Name",
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
                    child: Icon(
                      Icons.navigate_before,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 124.h, left: 16.w),
              child: Text(
                "Please enter your first and last name",
                style: GoogleFonts.dmSans(
                    fontSize: 18.sp, color: const Color(0xff8F92A1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 173.h,
                left: 16.w,
                right: 16.w,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                ),
                style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 400.h, left: 14.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff4CD080),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 140.w, vertical: 18.h)),
                  onPressed: () => Navigator.push(
                      context,
                      PageTransition(
                          child: const Phonenumber(),
                          type: PageTransitionType.fade)),
                  child: Text("Continue", style: TextStyle(fontSize: 16.sp))),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import 'login_page.dart';
import 'register_page.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.w,
            ),
            child: Image.asset(
              "images/Vector.png",
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 180.h, left: 8.w),
              child: Image.asset("images/Illustrations.png")),
          Padding(
            padding: EdgeInsets.only(top: 550.h, left: 40.w),
            child: Text(
              "   A new way to pay \n anything more faster",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 658.h, left: 16.w),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4CD080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 150.w, vertical: 18.h)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: LoginPage(), type: PageTransitionType.fade));
                },
                child: Text("Login", style: TextStyle(fontSize: 16.sp))),
          ),
          Padding(
              padding: EdgeInsets.only(left: 160.w, top: 750.h),
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context,
                    PageTransition(
                      child: const Registrar(),
                      type: PageTransitionType.fade,
                    )),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}

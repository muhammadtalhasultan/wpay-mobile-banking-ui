import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'login_page.dart';
import 'register_name_page.dart';

class Registrar extends StatelessWidget {
  const Registrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 60.h, left: 105.w),
                  child: SvgPicture.asset("images/Logo.svg")),
              Padding(
                padding: EdgeInsets.only(
                  top: 220.h,
                  left: 16.w,
                  right: 16.w,
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Your Email',
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
                padding: EdgeInsets.only(top: 283.h, left: 16.w),
                child: Text(
                  "By creating an account, you accept our Terms",
                  style: GoogleFonts.dmSans(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 325.h, left: 14.w),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff4CD080),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 140.w, vertical: 18.h)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const NameRegister(),
                              type: PageTransitionType.fade));
                    },
                    child: Text("Continue", style: TextStyle(fontSize: 16.sp))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 410.h, left: 70.w),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            child: LoginPage(), type: PageTransitionType.fade)),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp, color: Colors.grey)),
                      TextSpan(
                        text: "Login",
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff105D38),
                            decoration: TextDecoration.underline),
                      )
                    ])),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 618.h, left: 127.w),
                child: Text(
                  "or continue with",
                  style:
                      GoogleFonts.dmSans(fontSize: 16.sp, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 659.h, left: 16.w),
                child: Container(
                  width: 343.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.w, color: const Color(0x0fff2f2f)),
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      Image.asset("images/Facebook.png"),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "Login with Facebook",
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 730.h, left: 16.w),
                child: Container(
                  width: 343.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.w, color: const Color(0x0fff2f2f)),
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      Image.asset("images/Google.png"),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "Login with Google",
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

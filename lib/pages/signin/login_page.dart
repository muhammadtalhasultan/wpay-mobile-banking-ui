import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';
import 'register_page.dart';
import 'verify_email_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                      fontSize: 16.sp, color: const Color(0xFF8F92A1)
                      //Colors.grey,
                      ),
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 300.h,
                left: 16.w,
                right: 16.w,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: showpassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showpassword = !showpassword;
                        });
                      },
                      icon: Icon(
                        showpassword ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).primaryColor,
                      )),
                  suffixIconColor: Colors.grey,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    color: const Color(0xFF8F92A1),
                  ),
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 310.h, left: 200.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const VerifyEmail(),
                          type: PageTransitionType.fade));
                },
                child: Text(
                  "Forgot password?",
                  style: GoogleFonts.dmSans(
                      color: const Color(0xff4CD080),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 380.h,
                left: 16.w,
              ),
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
                            child: const Home(),
                            type: PageTransitionType.fade));
                  },
                  child: Text("Login", style: TextStyle(fontSize: 16.sp))),
            ),
            Padding(
                padding: EdgeInsets.only(top: 460.h, left: 110.w),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      PageTransition(
                          child: const Registrar(),
                          type: PageTransitionType.fade)),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "New to Wpay? ",
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp, color: const Color(0xFF8F92A1))),
                    TextSpan(
                      text: "Sign Up",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff4CD080),
                          decoration: TextDecoration.underline),
                    )
                  ])),
                )),
            Padding(
              padding: EdgeInsets.only(top: 618.h, left: 127.w),
              child: Text(
                "or continue with",
                style: GoogleFonts.dmSans(
                    fontSize: 16.sp, color: const Color(0xFF8F92A1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 659.h, left: 16.w),
              child: Container(
                width: 343.w,
                height: 54.h,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.w, color: const Color(0x0fff2f2f)),
                    borderRadius: BorderRadius.circular(16.r),
                    color: Theme.of(context).backgroundColor.withOpacity(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                        width: 38.w,
                        height: 38.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Theme.of(context).cardColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("images/Facebook.svg"),
                        )),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      "Login with Facebook",
                      style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
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
                  border:
                      Border.all(width: 2.w, color: const Color(0x0fff2f2f)),
                  borderRadius: BorderRadius.circular(16.r),
                  color: Theme.of(context).backgroundColor.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                        width: 38.w,
                        height: 38.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Theme.of(context).cardColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("images/Google.svg"),
                        )),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      "Login with Google",
                      style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

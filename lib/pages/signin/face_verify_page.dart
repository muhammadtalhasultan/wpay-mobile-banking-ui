import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';
import 'setup_password_page.dart';

class FaceIDverifiy extends StatefulWidget {
  final bool home;
  const FaceIDverifiy(this.home, {Key? key}) : super(key: key);

  @override
  State<FaceIDverifiy> createState() => _FaceIDverifiyState();
}

class _FaceIDverifiyState extends State<FaceIDverifiy>
    with SingleTickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: widget.home ? const Home() : const SetupPasswordPage(),
                      type: PageTransitionType.fade));
            }
          })
          ..addListener(() {
            setState(() {});
          });
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller!);
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/brooke-cagle-wKOKidNT14w-unsplash 1.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 107.w, top: 66.h),
            child: Text(
              "Face ID Verification",
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
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: const Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 267.w, left: 113.w),
            child: Image.asset("images/Face Detector2.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w, top: 124.h),
            child: Text(
              "Please put your phone in front of your\nface",
              style: GoogleFonts.dmSans(
                  fontSize: 18.sp, color: Colors.white.withOpacity(0.7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 222.h, left: 45.w),
            child: SizedBox(
              width: 280.w,
              height: 280.h,
              child: CircularProgressIndicator(
                value: _animation!.value,
                valueColor: const AlwaysStoppedAnimation(Color(0xff4CD080)),
                strokeWidth: 20.w,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 657.h, left: 120.w),
              child: Text(("${(_animation!.value * 100).round()}%"),
                  style: GoogleFonts.dmSans(
                      color: const Color(0xff4CD080),
                      fontSize: 48.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 728.h, left: 115.w),
              child: Text("Verifiying your face...",
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ))),
        ],
      ),
    );
  }
}

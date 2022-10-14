import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../signin/signup_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff105D38),
        body: PageView(
          controller: _controller,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  left: 326.w,
                  top: 87.h,
                  child: InkWell(
                    onTap: () => _controller.jumpToPage(2),
                    child: Text("Skip",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 326.w, top: 87.h),
                //   child: InkWell(
                //     onTap: () => _controller.jumpToPage(2),
                //     child: Text("Skip",
                //         style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                //   ),
                // ),
                Positioned(
                  top: 188.h,
                  child: InkWell(
                    onTap: () => _controller.jumpToPage(2),
                    child: Image.asset("images/QR Code Illustration.png"),
                  ),
                ),
                // Center(
                //   child: Image.asset("images/QR Code Illustration.png"),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 170.h, left: 37.w),
                //   child: Image.asset("images/QR Code Illustration.png"),
                // ),
                Positioned(
                  top: 499.h,
                  child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ScaleEffect(
                          activeStrokeWidth: 2,
                          activePaintStyle: PaintingStyle.stroke,
                          paintStyle: PaintingStyle.stroke,
                          dotColor: Colors.grey,
                          dotHeight: 6.h,
                          dotWidth: 6.w,
                          activeDotColor: Colors.white)),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 499.h, left: 166.w),
                //   child: SmoothPageIndicator(
                //       controller: _controller,
                //       count: 3,
                //       effect: ScaleEffect(
                //           activeStrokeWidth: 2,
                //           activePaintStyle: PaintingStyle.stroke,
                //           paintStyle: PaintingStyle.stroke,
                //           dotColor: Colors.grey,
                //           dotHeight: 6.h,
                //           dotWidth: 6.w,
                //           activeDotColor: Colors.white)),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 533.h),
                  child: Container(
                    width: 375.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r)),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48.h,
                        ),
                        Text(
                          "Fastest Payment",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Qr code scanning technology makes \n your payment process more faster",
                          style: TextStyle(
                            color: const Color(0xff8F92A1),
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 54.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4CD080),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 150.w, vertical: 18.h)),
                          onPressed: () => _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut),
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ), // ! page 1
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 326.w, top: 87.h),
                  child: InkWell(
                    onTap: () => _controller.jumpToPage(2),
                    child: Text("Skip",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 116.h, left: 62.w),
                  child: Image.asset("images/Face ID Illustration.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 499.h, left: 166.w),
                  child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ScaleEffect(
                          activeStrokeWidth: 2,
                          activePaintStyle: PaintingStyle.stroke,
                          paintStyle: PaintingStyle.stroke,
                          dotColor: Colors.grey,
                          dotHeight: 6.h,
                          dotWidth: 6.w,
                          activeDotColor: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 533.h),
                  child: Container(
                    width: 375.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r)),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48.h,
                        ),
                        Text(
                          "Safest Platform",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Multiple verification and face ID makse\n             your account more safely",
                          style: TextStyle(
                            color: const Color(0xff8F92A1),
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 54.h,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff4CD080),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.r)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 150.w, vertical: 18.h)),
                            onPressed: () => _controller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut),
                            child:
                                Text("Next", style: TextStyle(fontSize: 16.sp)))
                      ],
                    ),
                  ),
                ),
              ],
            ), // ! page 2
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 326.w, top: 87.h),
                  child: InkWell(
                    onTap: () => _controller.jumpToPage(2),
                    child: Text("Skip",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 149.h, left: 21.w),
                  child: Image.asset("images/Illustration-3.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 499.h, left: 166.w),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ScaleEffect(
                        activeStrokeWidth: 2,
                        activePaintStyle: PaintingStyle.stroke,
                        paintStyle: PaintingStyle.stroke,
                        dotColor: Colors.grey,
                        dotHeight: 6.h,
                        dotWidth: 6.w,
                        activeDotColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 533.h),
                  child: Container(
                    width: 375.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r)),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48.h,
                        ),
                        Text(
                          "Pay Anything",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Support many types of payments and \n       pay without being complicated",
                          style: TextStyle(
                            color: const Color(0xff8F92A1),
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 54.h,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff4CD080),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.r)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 130.w, vertical: 18.h)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: const Signup(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text("Get Strated",
                                style: TextStyle(fontSize: 16.sp)))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

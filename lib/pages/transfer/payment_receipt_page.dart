import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';
import '../scan/scan_page.dart';

class PaymentReceipt extends StatelessWidget {
  const PaymentReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset("images/Ribbons.png"),
          ),
          Positioned(
            top: 60.h,
            child: Text(
              "Payment Receipt",
              style: GoogleFonts.dmSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Padding(
          //     padding: EdgeInsets.only(left: 24.w, top: 112.h),
          Positioned(
              top: 112.h,
              bottom: 9.h,
              child: Container(
                //color: Color(0xff105D38),
                clipBehavior: Clip.hardEdge,

                decoration: BoxDecoration(
                    //   color: Theme.of(context).cardColor,
                    image: const DecorationImage(
                      image: AssetImage('images/Subtract.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Image.asset("images/Icon Success.png"),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 84.w, top: 260.h),
                          SizedBox(
                            height: 18.h,
                          ),
                          Text(
                            "Payment Success",
                            style: GoogleFonts.dmSans(
                              fontSize: 24.sp,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Your payment for Starbucks Coffee has\n               been successfully done",
                            style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Total Payment",
                            style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "\$132.00",
                            style: GoogleFonts.dmSans(
                              fontSize: 32.sp,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Image.asset("images/Divider.png"),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "Payment for                                        ",
                            style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            width: 260.w,
                            height: 82.h,
                            decoration: BoxDecoration(
                                color: Theme.of(context).hoverColor,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12.w,
                                ),
                                Image.asset("images/strbox.png"),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Starbucks Coffee",
                                        style: GoogleFonts.dmSans(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold)),
                                    // SizedBox(
                                    //   height: 1.h,
                                    // ),
                                    Text("Dec 2, 2020 . 3:02 PM",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff4CD080),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.r)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 110.w, vertical: 17.h)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const Home(),
                                      type: PageTransitionType.fade));
                            },
                            child:
                                Text("Done", style: TextStyle(fontSize: 16.sp)),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const ScanQRCode(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text(
                              "Pay again",
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                color: const Color(0xff4CD080),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
          // Positioned(
          //   top: 112.h,
          //   bottom: 10.h,
          //   child: Image.asset(
          //     "images/Subtract.png",
          //     color: Theme.of(context).cardColor,
          //   ),
          // ),
          //             Padding(
          // padding: EdgeInsets.only(top: 136.h, left: 137),
          // Positioned(
          //   top: 136.h,
          //   child: Image.asset("images/Icon Success.png"),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 84.w, top: 260.h),
          // Positioned(
          //   top: 260.h,
          //   child: Text(
          //     "Payment Success",
          //     style: GoogleFonts.dmSans(
          //       fontSize: 24.sp,
          //       color: Theme.of(context).primaryColor,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: EdgeInsets.only(left: 45.w, top: 302.h),
          // Positioned(
          //   top: 302.h,
          //   child: Text(
          //     "Your payment for Starbucks Coffee has\n               been successfully done",
          //     style: GoogleFonts.dmSans(
          //       fontSize: 16.sp,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 136.w, top: 362.h),
          // Positioned(
          //   top: 362.h,
          //   child: Text(
          //     "Total Payment",
          //     style: GoogleFonts.dmSans(
          //       fontSize: 16.sp,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 388.h,
          //   child: Text(
          //     "\$132.00",
          //     style: GoogleFonts.dmSans(
          //       fontSize: 32.sp,
          //       color: Theme.of(context).primaryColor,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 435.h,
          //   child: Image.asset("images/Divider.png"),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 32.w, top: 450.h),
          // Positioned(
          //   top: 450.h,
          //   child: Text(
          //     "Payment for",
          //     style: GoogleFonts.dmSans(
          //       fontSize: 16.sp,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          //  Padding(
          //   padding: EdgeInsets.only(top: 480.h, left: 32.w),
          // Positioned(
          //   top: 480.h,
          //   child: Container(
          //     width: 311.w,
          //     height: 81.h,
          //     decoration: BoxDecoration(
          //         color: Theme.of(context).cardColor,
          //         borderRadius: BorderRadius.circular(16.r)),
          //     child: Row(
          //       children: [
          //         SizedBox(
          //           width: 16.w,
          //         ),
          //         Image.asset("images/strbox.png"),
          //         SizedBox(
          //           width: 16.w,
          //         ),
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text("Starbucks Coffee",
          //                 style: GoogleFonts.dmSans(
          //                     color: Theme.of(context).primaryColor,
          //                     fontSize: 18.sp,
          //                     fontWeight: FontWeight.bold)),
          //             SizedBox(
          //               height: 4.h,
          //             ),
          //             Text("Dec 2, 2020 . 3:02 PM",
          //                 style: GoogleFonts.dmSans(
          //                   fontSize: 14.sp,
          //                   color: Theme.of(context).primaryColor,
          //                 ))
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 3.h,
            left: 1.w,
            child: Image.asset(
              "images/Background.png",
              scale: 0.76.w,
            ),
          ),
          Positioned(
            top: 66.h,
            child: Text(
              "Notification",
              style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
              left: 16.w,
              top: 60.h,
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
          Positioned(
            right: 16.w,
            top: 60.h,
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "images/setting.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 124.h),
            child: Container(
              width: 375.w,
              height: 688.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
            ),
          ),
          Positioned(
            top: 140.h,
            child: Image.asset("images/home_indicator.png",

                color: Theme.of(context).backgroundColor.withOpacity(0.1)),
          ),
          Positioned(
            left: 16.w,
            top: 161.h,
            child: Text(
              "TODAY",
              style: GoogleFonts.dmSans(color: Colors.grey, fontSize: 14.sp),
            ),
          ),
          Positioned(
            right: 16.w,
            top: 161.h,
            child: Text(
              "Mark as read",
              style: GoogleFonts.dmSans(
                  color: const Color(0xff4CD080), fontSize: 14.sp),
            ),
          ),
          Positioned(
              top: 198.h,
              child: Container(
                width: 343.w,
                height: 96.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xff4CD080).withOpacity(0.1)),
              )),
          Positioned(
            left: 32.w,
            top: 221.h,
            child: Image.asset("images/offer.png"),
          ),
          Positioned(
            left: 96.w,
            top: 213.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cashback 50%",
                  style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                Text(
                  "Get 50% cashback for thee next top up",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Row(children: [
                  Text("Top up now",
                      style: GoogleFonts.dmSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff4CD080))),
                  const Icon(
                    Icons.navigate_next,
                    color: Color(0xff4CD080),
                    size: 20,
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 320.h,
              left: 13.h,
              right: 13.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "YESTERDAY",
                    style:
                        GoogleFonts.dmSans(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardView(
                      context: context,
                      iconUrl: "images/black.svg",
                      heading: "\$250 top up successfuly\n added",
                      time: "6:50"),
                  cardView(
                      context: context,
                      iconUrl: "images/Dayily.svg",
                      heading: "Cyber Monday Deal",
                      time: "12:50"),
                  cardView(
                      context: context,
                      iconUrl: "images/offerTag.svg",
                      heading: "Use BLCK10 Promo Code",
                      time: "1:20"),
                  cardView(
                      context: context,
                      iconUrl: "images/paysuc.svg",
                      heading: "Daily Cashback",
                      time: "6:33"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "LAST 7 DAYS",
                    style:
                        GoogleFonts.dmSans(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardView(
                      context: context,
                      iconUrl: "images/paysuc.svg",
                      heading: "Use NOV10 Promo Code",
                      time: "6:33"),
                  cardView(
                      context: context,
                      iconUrl: "images/offerTag.svg",
                      heading: "Daily Cashback",
                      time: "6:33"),
                  cardView(
                      context: context,
                      iconUrl: "images/offerTag.svg",
                      heading: "Daily Cashback",
                      time: "6:33"),
                  cardView(
                      context: context,
                      iconUrl: "images/offerTag.svg",
                      heading: "Daily Cashback",
                      time: "6:33"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardView(
          {required BuildContext context,
          required String iconUrl,
          required String heading,
          required String time}) =>
      Card(
        borderOnForeground: false,
        semanticContainer: false,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(iconUrl),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 230.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: GoogleFonts.dmSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(time,
                        style: GoogleFonts.dmSans(
                            fontSize: 12.sp,
                            color: Theme.of(context).primaryColor)),
                  ],
                ),
              ),
              Image.asset("images/Tag.png"),
            ],
          ),
        ),
      );
}

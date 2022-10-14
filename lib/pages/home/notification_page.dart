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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: Image.asset("images/Background.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 87.w, top: 66.h),
              child: Text(
                "Notification",
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
              padding: EdgeInsets.only(top: 60.h, left: 319.w),
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
            Padding(
              padding: EdgeInsets.only(top: 140.h, left: 163.w),
              child: Image.asset("images/Home Indicator.png",
                  color: Theme.of(context).backgroundColor.withOpacity(0.1)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 161.h, left: 16.w),
              child: Text(
                "TODAY",
                style: GoogleFonts.dmSans(color: Colors.grey, fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 161.h, left: 274.w),
              child: Text(
                "Mark as read",
                style: GoogleFonts.dmSans(
                    color: const Color(0xff4CD080), fontSize: 14.sp),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 205.h, left: 16.w),
                child: Container(
                  width: 343.w,
                  height: 96.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: const Color(0xff4CD080).withOpacity(0.1)),
                )),
            Padding(
              padding: EdgeInsets.only(top: 221.h, left: 32.w),
              child: Image.asset("images/offer.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 213.h, left: 96.w),
              child: Text(
                "Cashback 50%",
                style: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 239.h, left: 96.w),
              child: Text(
                "Get 50% cashback for thee next top up",
                style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 259.h, left: 165.w),
              child: const Icon(
                Icons.navigate_next,
                color: Color(0xff4CD080),
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 260.h, left: 96.w),
              child: Text("Top up now",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff4CD080))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 317.h, left: 16.w),
              child: Text(
                "YESTERDAY",
                style: GoogleFonts.dmSans(color: Colors.grey, fontSize: 14.sp),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 353.h, left: 16.w),
                child: SvgPicture.asset("images/Dayily.svg")),
            Padding(
                padding: EdgeInsets.only(top: 424.h, left: 16.w),
                child: SvgPicture.asset("images/black.svg")),
            Padding(
                padding: EdgeInsets.only(top: 495.h, left: 16.w),
                child: SvgPicture.asset("images/offerTag.svg")),
            Padding(
                padding: EdgeInsets.only(top: 566.h, left: 16.w),
                child: SvgPicture.asset("images/paysuc.svg")),
            Padding(
                padding: EdgeInsets.only(top: 703.h, left: 16.w),
                child: Image.asset("images/novio.png")),
            Padding(
              padding: EdgeInsets.only(top: 356.h, left: 80.w),
              child: Text("Daily Cashback",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 382.h, left: 80.w),
              child: Text("8:00 AM",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, color: Theme.of(context).primaryColor)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 356.h, left: 306.w),
              child: Image.asset("images/Tag.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 427.h, left: 80.w),
              child: Text("Use BLCK10 Promo Code",
                  style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 453.h, left: 80.w),
              child: Text("3:40 PM",
                  style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 427.h, left: 306.w),
              child: Image.asset("images/Tag.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 498.h, left: 80.w),
              child: Text("Cyber Monday Deal",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 524.h, left: 80.w),
              child: Text("10:39 AM",
                  style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 498.h, left: 306.w),
              child: Image.asset("images/Tag.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 566.h, left: 80.w),
              child: Text("\$250 top up successfuly\n added",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 614.h, left: 80.w),
              child: Text("6: 14 PM",
                  style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 566.h, left: 321.w),
              child: Image.asset("images/Taginfo.png"), //
            ),
            Padding(
              padding: EdgeInsets.only(top: 667.h, left: 16.w),
              child: Text("LAST 7 DAY",
                  style:
                      GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 706.h, left: 80.w),
              child: Text("Use NOV10 Promo Code",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 732.h, left: 80.w),
              child: Text("3:40 PM",
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12.sp,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 706.h, left: 306.w),
              child: Image.asset("images/Tag.png"),
            ),
          ],
        ),
      ),
    );
  }
}

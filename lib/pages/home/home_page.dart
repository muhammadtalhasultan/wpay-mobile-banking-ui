import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../account/account_page.dart';
import '../scan/scan_page.dart';
import '../statistics/statistics_page.dart';
import '../history/history_page.dart';
import '../top_up/topup_page.dart';
import '../transfer/transform_destination_page.dart';
import 'notification_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeMode themeMode = ThemeMode.system;

  List<String> cards = [
    "images/Property 1=Banner, Property 2=Large, Property 3=1.svg",
    "images/Property 1=Banner, Property 2=Large, Property 3=2.svg"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: 900.h,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 65.h, left: 16.w),
                    child: SvgPicture.asset(
                      "images/Logo.svg",
                      width: 64.w,
                      height: 38.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.h, left: 319.w),
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: SvgPicture.asset(
                          "images/setting.svg",
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 124.h, left: 16.w),
                    child: Text(
                      "Hello Andre,",
                      style: GoogleFonts.dmSans(
                          fontSize: 18.sp,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 153.h, left: 16.w),
                    child: Text(
                      "Your available balance",
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 124.h, left: 261.w),
                    child: Text(
                      "\$15,901",
                      style: GoogleFonts.dmSans(
                          fontSize: 28.sp,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 197.h, left: 16.w),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 343.w,
                        height: 94.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xff4CD080)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child:
                                                  const TransformDsetination(),
                                              type: PageTransitionType.fade));
                                    },
                                    child: SvgPicture.asset(
                                        "images/Transfer.svg")),
                                SizedBox(
                                  height: 13.h,
                                ),
                                Text(
                                  "Transfer",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14.sp, color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 30.w),
                            Image.asset("images/div.png"),
                            SizedBox(width: 40.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: const TopUp(),
                                              type: PageTransitionType.fade));
                                    },
                                    child:
                                        SvgPicture.asset("images/Topup.svg")),
                                SizedBox(
                                  height: 13.h,
                                ),
                                Text(
                                  "Top Up",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14.sp, color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 30.w),
                            Image.asset("images/div.png"),
                            SizedBox(width: 40.w),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const History(),
                                        type: PageTransitionType.fade));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("images/History.svg"),
                                  SizedBox(
                                    height: 13.h,
                                  ),
                                  Text(
                                    "History",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14.sp, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 305.h, left: 16.w),
                      child: Text(
                        "Payment List",
                        style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 346.h, left: 25.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Electricity.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 410.h, left: 20.w),
                    child: Text("Electricity",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 346.h, left: 115.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Internet.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 410.h, left: 118.w),
                    child: Text("Internet",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 346.h, left: 204.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Voucher.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 410.h, left: 205.w),
                    child: Text("Voucher",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 346.h, left: 294.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Assurance.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 410.h, left: 287.w),
                    child: Text("Assurance",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 446.h, left: 25.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Merchant.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 510.h, left: 25.w),
                    child: Text("Merchant",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 446.h, left: 115.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Mobile.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 510.h, left: 115.w),
                    child: Text("Mobile\n Credit",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 446.h, left: 204.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/Bill.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 510.h, left: 223.w),
                    child: Text("Bill",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 446.h, left: 294.w),
                    child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("images/More.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 510.h, left: 305.w),
                    child: Text("More",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 574.h, left: 16),
                    child: Text("Promo & Discount",
                        style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 577.h, left: 297.w),
                    child: Text("See More",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff4CD080))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 615.h,
                      left: 16.w,
                    ),
                    child: SizedBox(
                      width: 450.w,
                      height: 170.h,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 3.w, left: 14.w),
                                child:
                                    SvgPicture.asset(cards[index].toString()),
                              ),
                            ],
                          );
                        },
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // !----------------------------------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: 729.h,
            ),
            child: SvgPicture.asset(
              "images/bottom.svg",
              fit: BoxFit.cover,
              height: double.infinity,
              color: Theme.of(context).cardColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 746.h, left: 24),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const Home(), type: PageTransitionType.fade));
              },
              child: SvgPicture.asset(
                "images/home.svg",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 746.h, left: 100.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const Statistic(), type: PageTransitionType.fade));
              },
              child: SvgPicture.asset(
                "images/chart.svg",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 746.h, left: 252.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const NotificationPage(),
                        type: PageTransitionType.fade));
              },
              child: SvgPicture.asset(
                "images/alarm.svg",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 746.h, left: 328.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const Account(), type: PageTransitionType.fade));
              },
              child: SvgPicture.asset(
                "images/person.svg",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 701.h, left: MediaQuery.of(context).size.width / 2.35),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const ScanQRCode(),
                        type: PageTransitionType.fade));
              },
              child: Container(
                width: 56.w,
                height: 56.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFAE58),
                ),
                child: Image.asset(
                  "images/barcode.png",
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.0, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

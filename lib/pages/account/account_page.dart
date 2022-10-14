import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../statistics/statistics_page.dart';
import '../home/home_page.dart';
import '../home/notification_page.dart';
import '../scan/scan_page.dart';
import '../signin/login_page.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<String> cards = [
    "images/Property 1=Credit Card, Property 2=Large, Property 3=2.svg",
    "images/Property 1=Credit Card, Property 2=Large, Property 3=1.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 446.h, left: 16.w),
            child: SvgPicture.asset(
              "images/backperson.svg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 502.h, left: 16.w),
            child: SvgPicture.asset(
              "images/Look.svg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 558.h, left: 16.w),
            child: SvgPicture.asset(
              "images/Gift.svg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 617.h, left: 16.w),
            child: SvgPicture.asset(
              "images/Helpicon.svg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 670.h, left: 16.w),
            child: SvgPicture.asset(
              "images/Logout.svg",
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 447.h, left: 56.w),
              child: Text("Personal",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 503.h, left: 56.w),
              child: Text("Privacy & Security",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 559.h, left: 56.w),
              child: Text("Offers & Rewards",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 618.h, left: 56.w),
              child: Text("Help",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 671.h, left: 56.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const LoginPage(), type: PageTransitionType.fade));
                },
                child: Text("Logout",
                    style: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold)),
              )),
          Padding(
            padding: EdgeInsets.only(top: 452.h, left: 344.w),
            child: Icon(Icons.navigate_next,
                color: Theme.of(context).primaryColor),
          ),
          Padding(
            padding: EdgeInsets.only(top: 508.h, left: 344.w),
            child: Icon(
              Icons.navigate_next,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 564.h, left: 344.w),
            child: Icon(Icons.navigate_next,
                color: Theme.of(context).primaryColor),
          ),
          Padding(
            padding: EdgeInsets.only(top: 620.h, left: 344.w),
            child: Icon(Icons.navigate_next,
                color: Theme.of(context).primaryColor),
          ),
          Padding(
            padding: EdgeInsets.only(top: 676.h, left: 344.w),
            child: Icon(Icons.navigate_next,
                color: Theme.of(context).primaryColor),
          ),
          Container(
            height: 414.h,
            padding: EdgeInsets.only(top: 230.h),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "images/Background.png",
                    ),
                    fit: BoxFit.cover),
                color: const Color(0xff105D38),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r))),
            child: Swiper(
              itemCount: cards.length,
              itemWidth: 360.w,
              itemHeight: 250.h,
              layout: SwiperLayout.TINDER,
              itemBuilder: (context, index) {
                return SvgPicture.asset(cards[index]);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 129.h, left: 136.w),
            child: Text("Bianca Cooper",
                style: GoogleFonts.dmSans(
                    fontSize: 24.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 167.h, left: 136.w),
            child: Text("(480)555-0103",
                style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 193.h, left: 136.w),
            child: Text("bianca@example.com",
                style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  color: Colors.white,
                )),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.w, top: 66.h),
              child: Text(
                "My Profile",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
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
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset(
                  "images/IconQr.svg",
                  color: Colors.white,
                  width: 64.w,
                  height: 38.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 124.h, left: 10),
            child: Image.asset("images/Avatar.png"),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 729.h,
            ),
            child: SvgPicture.asset(
              "images/bottom.svg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
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
                "images/backhome.svg",
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
                    child: const Statistic(),
                    type: PageTransitionType.fade,
                  ),
                );
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
                "images/backperson.svg",
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
          ),
        ],
      ),
    );
  }
}

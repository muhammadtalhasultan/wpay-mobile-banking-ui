import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../account/account_page.dart';
import '../home/home_page.dart';
import '../home/notification_page.dart';
import '../scan/scan_page.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  late List<GOPData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 1250.h,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 146.w, top: 66.h),
                    child: Text(
                      "Statistic",
                      style: GoogleFonts.dmSans(
                        fontSize: 20.sp,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
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
                          child: Icon(
                            Icons.navigate_before,
                            color: Theme.of(context).primaryColor,
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
                      child: Image.asset(
                        "images/setting.png",
                        color: Theme.of(context).primaryColor,
                        width: 64.w,
                        height: 38.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 124.h, left: 16.w),
                    child: Container(
                      width: 343.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: const Color(0xff105D38)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 140.h, left: 187.w),
                      child: Image.asset("images/div.png")),
                  Padding(
                      padding: EdgeInsets.only(top: 164.h, left: 64.w),
                      child: Text("\$5,440",
                          style: GoogleFonts.dmSans(
                              fontSize: 24.sp,
                              color: const Color(0xffE0E0E0),
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.only(top: 164.h, left: 237.w),
                      child: Text("\$2,209",
                          style: GoogleFonts.dmSans(
                              fontSize: 24.sp,
                              color: const Color(0xffE0E0E0),
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.only(top: 140.h, left: 81.w),
                      child: Text("Income",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              color: const Color(0xffE0E0E0)))),
                  Padding(
                      padding: EdgeInsets.only(top: 140.h, left: 246.w),
                      child: Text("Expense",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              color: const Color(0xffE0E0E0)))),
                  Padding(
                    padding: EdgeInsets.only(top: 238.h, left: 16.w),
                    child: Container(
                      width: 91.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weekly",
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: Theme.of(context).primaryColor,
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset("images/Iconnavbottom.png")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 242.h, left: 215.w),
                      child: Text("Income",
                          style: GoogleFonts.dmSans(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14.sp,
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 240.h, left: 189.w),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                        color: Color(0xff4CD080),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 240.h, left: 278.w),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                        color: Color(0xffFFAE58),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 242.h, left: 304.w),
                      child: Text("Expense",
                          style: GoogleFonts.dmSans(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14.sp,
                          ))),
                  // chart weeks //
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 25.w),
                    child: _buidChart(10, 86, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 392.h, left: 25.w),
                    child: _buidChart(10, 66, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 77.w),
                    child: _buidChart(10, 61, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 367.h, left: 77.w),
                    child: _buidChart(10, 91, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 129.w),
                    child: _buidChart(10, 100, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 406.h, left: 129.w),
                    child: _buidChart(10, 52, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 181.w),
                    child: _buidChart(10, 31, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 337.h, left: 181.w),
                    child: _buidChart(10, 121, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 233.w),
                    child: _buidChart(10, 86, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 285.w),
                    child: _buidChart(10, 53, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 359.h, left: 285.w),
                    child: _buidChart(10, 99, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 390.h, left: 233.w),
                    child: _buidChart(10, 66, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 298.h, left: 337.w),
                    child: _buidChart(10, 69, const Color(0xffFFAE58)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 375.h, left: 337.w),
                    child: _buidChart(10, 83, const Color(0xff4CD080)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 16.w),
                    child: Text("Mon",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 68.w),
                    child: Text("Tue",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 120.w),
                    child: Text("Wed",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 172.w),
                    child: Text("Thu",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 224.w),
                    child: Text("Fri",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 276.w),
                    child: Text("Sat",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 466.h, left: 328.w),
                    child: Text("Sun",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: Colors.grey)),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 518.h, left: 16.w),
                    child: Container(
                      width: 343.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 522.h, left: 196.w),
                      child: Container(
                          width: 159.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            color: Theme.of(context).cardColor,
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 534.h, left: 72.w),
                      child: Text("Income",
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            color: Theme.of(context).primaryColor,
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 534.h, left: 239.w),
                      child: Text("Expense",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              color: const Color(0xff4CD080)))),
                  Padding(
                      padding: EdgeInsets.only(top: 596.h, left: 16.w),
                      child: Text("Category Chart",
                          style: GoogleFonts.dmSans(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.only(top: 632.h, left: 16.w),
                      child: Text("Last 7 days expenses",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp, color: Colors.grey))),
                  Padding(
                      padding: EdgeInsets.only(top: 626.h, left: 274.w),
                      child: Text("-\$312.00",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Theme.of(context).primaryColor,
                          ))),
                  Padding(
                    padding: EdgeInsets.only(top: 735.h, left: 140.w),
                    child: Container(
                        width: 100.w,
                        height: 100.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("images/Coffe.svg"),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 660.h, left: 65.w),
                    child: SizedBox(
                        width: 250.w,
                        height: 250.h,
                        child: SfCircularChart(
                          series: <CircularSeries>[
                            DoughnutSeries<GOPData, dynamic>(
                                dataSource: _chartData,
                                xValueMapper: (GOPData date, _) =>
                                    date.continet,
                                pointColorMapper: (GOPData data, _) =>
                                    data.color,
                                yValueMapper: (GOPData date, _) => date.gpd),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 917.h, left: 31.w),
                    child: Container(
                      width: 6.w,
                      height: 6..h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffFFAE58)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 917.h, left: 175.w),
                    child: Container(
                      width: 6.w,
                      height: 6..h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff4CD080)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 917.h, left: 284.w),
                    child: Container(
                      width: 6.w,
                      height: 6..h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff105D38)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 910.h, left: 45.w),
                    child: Text("Transportation",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: const Color(0xffFFAE58))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 910.h, left: 189.w),
                    child: Text("Shopping",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: const Color(0xff4CD080))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 910.h, left: 298.w),
                    child: Text("Coffee",
                        style: GoogleFonts.dmSans(
                            fontSize: 14.sp, color: const Color(0xff105D38))),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 954.h, left: 16.w),
                    child: Text("Recent Expenses",
                        style: GoogleFonts.dmSans(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1000.h, left: 80.w),
                    child: Text("Starbucks Coffee",
                        style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1011.h, left: 290.w),
                    child: Text("-\$156.00",
                        style: GoogleFonts.dmSans(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 998.h, left: 16.w),
                    child: SvgPicture.asset("images/starbucks.svg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1026.h, left: 80.w),
                    child: Text("Dec 2, 2020 . 3:09 PM",
                        style: GoogleFonts.dmSans(
                          fontSize: 12.sp,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 1062.h, left: 16.w, right: 16.w),
                      child: Divider(
                        color: Theme.of(context).primaryColor,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 1079.h, left: 16.w),
                    child: Image.asset("images/Netflix.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1081.h, left: 80.w),
                    child: Text("Netflix Subscription",
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1105.h, left: 80.w),
                    child: Text("Dec 11, 2020 . 10:02 AMM",
                        style: GoogleFonts.dmSans(
                          fontSize: 12.sp,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1092.h, left: 290.w),
                    child: Text("-\$87.00",
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 730.h,
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
                        child: const Statistic(), type: PageTransitionType.fade));
              },
              child: SvgPicture.asset(
                "images/chartback.svg",
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
              top: 701.h,
              left: MediaQuery.of(context).size.width / 2.35,
            ),
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
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buidChart(int width, int height, Color color) {
    return Container(
      width: width.w,
      height: height.h,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
    );
  }

  List<GOPData> getChartData() {
    final List<GOPData> chartDate = [
      GOPData(
        continet: "Transportation",
        gpd: 20,
        color: const Color(0xffFFAE58),
      ),
      GOPData(
        continet: "Shopping",
        gpd: 20,
        color: const Color(0xff4CD080),
      ),
      GOPData(
        continet: "Coffee",
        gpd: 60,
        color: const Color(0xff105D38),
      ),
    ];
    return chartDate;
  }
}

class GOPData {
  final String continet;
  final int gpd;
  final Color color;
  GOPData({
    required this.continet,
    required this.gpd,
    required this.color,
  });
}

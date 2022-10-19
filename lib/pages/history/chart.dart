import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartHistory extends StatelessWidget {
  const ChartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0.w),
            child: Image.asset("images/Background.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 138.w, top: 66.h),
            child: Text(
              "Starbucks",
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
              padding: EdgeInsets.only(top: 124.h),
              child: Container(
                  width: 375.w,
                  height: 688.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r)),
                  ))),

          Padding(
            padding: EdgeInsets.only(top: 161.h, left: 128.w),
            child: Text("\$148,63",
                style: GoogleFonts.dmSans(
                    fontSize: 32.sp,
                    color: const Color(0xff4CD080),
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
              padding: EdgeInsets.only(top: 206.h, left: 80.w),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "You’ve spent",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
                TextSpan(
                    text: "-\$232.4",
                    style: TextStyle(
                        fontSize: 14.sp, color: const Color(0xff4CD080))),
                TextSpan(
                    text: "this month",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
              ]))),
          Padding(
            padding: EdgeInsets.only(top: 140.h, left: 163.w),
            child: Image.asset("images/home_indicator.png"),
          ),
          Padding(
              padding: EdgeInsets.only(top: 534.h, left: 16.w),
              child: Text("History",
                  style: GoogleFonts.dmSans(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold))),
          Padding(
              padding: EdgeInsets.only(top: 258.h, left: 16.w),
              child: Text("\$300",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),
          Padding(
              padding: EdgeInsets.only(top: 307.h, left: 16.w),
              child: Text("\$200",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),
          Padding(
              padding: EdgeInsets.only(top: 356.h, left: 16.w),
              child: Text("\$100",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),
          Padding(
              padding: EdgeInsets.only(top: 405.h, left: 16.w),
              child: Text("\$0",
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),

          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 64.w),
            child: Text("Jul",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 115.w),
            child: Text("Aug",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 173.w),
            child: Text("Sep",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 231.w),
            child: Text("Oct",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 288.w),
            child: Text("Nov",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460.h, left: 346.w),
            child: Text("Dec",
                style: GoogleFonts.dmSans(fontSize: 14.sp, color: Colors.grey)),
          ),
          // !---------------------------------------------------------------- //
          Padding(
            padding: EdgeInsets.only(top: 495.h, left: 24.w),
            child: SizedBox(
              width: 500.w,
              height: 28.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("1D",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("1W",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("1M",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("3M",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("6M",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("1Y",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Theme.of(context)
                              .backgroundColor
                              .withOpacity(0.1)),
                      child: Text("2Y",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      width: 48.w,
                      height: 28.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color:
                            Theme.of(context).backgroundColor.withOpacity(0.1),
                      ),
                      child: Text("3Y",
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // !---------------------------------------------------------------- //
          Padding(
            padding: EdgeInsets.only(top: 250.h, left: 50.w),
            child: SizedBox(
              width: 400.w,
              height: 200.h,
              child: LineChart(
                LineChartData(
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(color: Colors.grey.withOpacity(0.1));
                        },
                        getDrawingVerticalLine: (value) {
                          return FlLine(color: Colors.grey.withOpacity(0.1));
                        }),
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6,
                    titlesData: FlTitlesData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                          spots: const [
                            FlSpot(0, 1),
                            FlSpot(1, 2),
                            FlSpot(2, 1),
                            FlSpot(3, 2),
                            FlSpot(4, 1),
                            FlSpot(5, 4),
                            FlSpot(6, 2),
                            FlSpot(7, 1),
                            FlSpot(8, 2),
                            FlSpot(9, 4),
                            FlSpot(10, 3),
                          ],
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff4CD080).withOpacity(0.2),
                                Theme.of(context)
                                    .backgroundColor
                                    .withOpacity(0.1),
                              ],
                            ),
                          ),
                          isCurved: true,
                          color: const Color(0xff4CD080),
                          barWidth: 4,
                          dotData: FlDotData(show: false))
                    ]),
                swapAnimationCurve: Curves.bounceInOut,
                swapAnimationDuration: const Duration(milliseconds: 1000),
              ),
            ),
          ),

          // ! ---- ---- ---- ---- ---- ---- ---- ---- ----
          Padding(
            padding: EdgeInsets.only(top: 575.h, left: 16.w),
            child: SvgPicture.asset("images/starbucks.svg"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 577.h, left: 80.w),
            child: Text("Starbucks Coffee",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 603.h, left: 80.w),
            child: Text("2 Dec 2020 . 3:09 PM",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 588.h, left: 290.w),
            child: Text("-\$15.00",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 639.h, left: 16.w, right: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              )),

          // ! ---- ---- ---- ---- ---- ---- ---- ---- ----

          Padding(
            padding: EdgeInsets.only(top: 656.h, left: 16.w),
            child: SvgPicture.asset("images/starbucks.svg"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 658.h, left: 80.w),
            child: Text("Starbucks Coffee",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 684.h, left: 80.w),
            child: Text("2 Dec 2020 . 3:09 PM",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 669.h, left: 290.w),
            child: Text("-\$24.99",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 720.h, left: 16.w, right: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              )),

          // ! ---- ---- ---- ---- ---- ---- ---- ---- ----

          Padding(
            padding: EdgeInsets.only(top: 737.h, left: 16.w),
            child: SvgPicture.asset("images/starbucks.svg"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 739.h, left: 80.w),
            child: Text("Starbucks Coffee",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 765.h, left: 80.w),
            child: Text("2 Dec 2020 . 3:09 PM",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 750.h, left: 290.w),
            child: Text("-\$17.59",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                )),
          ),
        ],
      ),
    );
  }
}

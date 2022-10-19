import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'chart.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0.w),
              child: Image.asset("images/Background.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 116.w, top: 66.h),
              child: Text(
                "Payment History",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 311.w, top: 60.h),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                        backgroundColor: Theme.of(context).cardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0.r),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 370.h,
                            child: Stack(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 34.h, left: 341.w),
                                    child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Theme.of(context).primaryColor,
                                        ))),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 34.h, left: 140.w),
                                  child: Text("Add Filter",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 20.sp,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 89.h, left: 16.w),
                                  child: Text("Categories",
                                      style: GoogleFonts.dmSans(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 16.sp,
                                      )),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 130.h, left: 341.w),
                                  child: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 127.h, left: 16.w),
                                  child: Text("All",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 16.sp, color: Colors.grey)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 165.h, left: 16.w, right: 16.w),
                                  child: Divider(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 229.h, left: 98.w),
                                  child: Container(
                                    width: 132.w,
                                    height: 38.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    child: Text("Bank Transfer",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 16.sp,
                                          color: Theme.of(context).primaryColor,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 229.h, left: 240.w),
                                  child: Container(
                                    width: 119.w,
                                    height: 38.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    child: Text("Credit Card",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 16.sp,
                                          color: Theme.of(context).primaryColor,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 229.h, left: 16.w),
                                  child: Container(
                                    width: 72.w,
                                    height: 38.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    child: Text("Wally",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 16.sp,
                                          color: Theme.of(context).primaryColor,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 191.h, left: 16.w),
                                  child: Text("Payment Type",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 16.sp,
                                        color: Theme.of(context).primaryColor,
                                      )),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 290.h, left: 16.w),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: const Color(0xff4CD080),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        16.r)),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 125.w,
                                                vertical: 18.h)),
                                        onPressed: () {},
                                        child: Text("Apply Filter",
                                            style:
                                                TextStyle(fontSize: 16.sp)))),
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                )),
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
              padding: EdgeInsets.only(top: 140.h, left: 163.w),
              child: Image.asset("images/home_indicator.png"),
            ),
            Padding(
                padding: EdgeInsets.only(top: 161.h, left: 16.w),
                child: Text("Spendings",
                    style: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold))),
            Padding(
              padding: EdgeInsets.only(top: 205.h),
              child: SizedBox(
                width: 800.w,
                height: 120.h,
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const ChartHistory(),
                                  type: PageTransitionType.fade));
                        },
                        child: Container(
                          width: 145.w,
                          height: 92.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: models[i].color),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25.h,
                              ),
                              SvgPicture.asset(models[i].logo),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                models[i].name,
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: models.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 350.h, left: 16.w),
              child: Container(
                width: 343.w,
                height: 101.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xffFFAE58).withOpacity(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset("images/navup.svg"),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.w,
                        ),
                        Text(
                            "You’ve spent \$1,547 on expenses \n over the past 2 months",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).primaryColor,
                            )),
                        SizedBox(
                          height: 8.w,
                        ),
                        Text("View statistic",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xffFFAE58))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 407.h, left: 170.w),
              child: const Icon(Icons.navigate_next, color: Color(0xffFFAE58)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 480.h, left: 16.w),
              child: Text("Expenses",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            // TODO Icons ...
            Padding(
              padding: EdgeInsets.only(top: 525.h, left: 16.w),
              child: SvgPicture.asset("images/starbucks.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 600.h, left: 16.w),
              child: SvgPicture.asset("images/dribble.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 675.h, left: 16.w),
              child: Image.asset("images/netflixx.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 750.h, left: 16.w),
              child: SvgPicture.asset("images/starbucks.svg"),
            ),
            // TODO Divider ...
            Padding(
                padding: EdgeInsets.only(top: 575.h, left: 16.w, right: 16.w),
                child: Divider(
                  color: Theme.of(context).primaryColor,
                )),
            Padding(
                padding: EdgeInsets.only(top: 650.h, left: 16.w, right: 16.w),
                child: Divider(
                  color: Theme.of(context).primaryColor,
                )),
            Padding(
                padding: EdgeInsets.only(top: 725.h, left: 16.w, right: 16.w),
                child: Divider(
                  color: Theme.of(context).primaryColor,
                )),
            // TODO Texts ...
            Padding(
              padding: EdgeInsets.only(top: 525.h, left: 80.w),
              child: Text("Starbucks Coffee",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550.h, left: 80.w),
              child: Text("2 Dec 2020 . 3:09 PM",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 530.h, left: 290.w),
              child: Text("-\$156.00",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 600.h, left: 80.w),
              child: Text("December Subscription",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 625.h, left: 80.w),
              child: Text("1 Dec 2020 . 10:00 PM",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 610.h, left: 290.w),
              child: Text("-\$60.00",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 675.h, left: 80.w),
              child: Text("Netflix Subscription",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 700.h, left: 80.w),
              child: Text("11 Nov 2020 . 10:02 AM",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 690.h, left: 290.w),
              child: Text("-\$87.00",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 750.h, left: 80.w),
              child: Text("Starbucks Coffee",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 775.h, left: 80.w),
              child: Text("2 Dec 2020 . 3:09 PM",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 760.h, left: 290.w),
              child: Text("-\$156.00",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  List<Model> models = [
    Model(
      logo: "images/starbucks 2.svg",
      name: "Starbucks",
      color: const Color(0xff105D38),
    ),
    Model(
      logo: "images/bx_bxl-dribbble.svg",
      name: "Dribbble",
      color: const Color(0xffFF4081),
    ),
    Model(
      logo: "images/starbucks 2.svg",
      name: "Starbucks",
      color: Colors.black,
    ),
  ];
}

class Model {
  String logo;
  String name;
  Color color;

  Model({required this.logo, required this.name, required this.color});
}

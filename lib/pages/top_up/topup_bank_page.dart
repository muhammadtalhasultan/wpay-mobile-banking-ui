// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUpBank extends StatefulWidget {
  const TopUpBank({Key? key}) : super(key: key);

  @override
  State<TopUpBank> createState() => _TopUpBankState();
}

class _TopUpBankState extends State<TopUpBank> {
  ThemeMode themeMode = ThemeMode.system;

  int _currentindex = 0;
  @override
  void initState() {
    // TODO: implement initState
    ThemeMode themeMode = ThemeMode.system;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff105D38),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0.w),
              child: Image.asset("images/Background.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 105.w, top: 66.h),
              child: Text(
                "Top Up with Bank",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 124.h),
              child: Text(
                "Select bank",
                style: GoogleFonts.dmSans(
                  fontSize: 18.sp,
                  color: Colors.white,
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
                    child: const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 165.h),
              child: SizedBox(
                width: 800.w,
                height: 120.h,
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: Container(
                        width: 96.w,
                        height: 110.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Theme.of(context).cardColor,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            SvgPicture.asset(models[i].logo),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              models[i].name,
                              style: GoogleFonts.dmSans(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
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
              padding: EdgeInsets.only(top: 307.h),
              child: Container(
                width: 375.w,
                height: 812.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Image.asset(
                      "images/Home Indicator.png",
                      color: Theme.of(context).backgroundColor.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 344.h, left: 16),
                child: Text("Read instruction",
                    style: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.only(top: 380.h, left: 16),
                child: Text(
                    "A step by step guide on how to top up with\n bank transfer",
                    style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    ))),
            Padding(
              padding: EdgeInsets.only(top: 380.h, left: 5),
              child: Stepper(
                  steps: [
                    Step(
                        isActive: true,
                        title: Text("Top up via ATM",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        content: Stack(
                          children: [
                            SvgPicture.asset("images/numbers.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 27.w),
                              child: Text(
                                "Insert your ATM card and enter your PIN.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h, left: 30.w),
                              child: Text(
                                "Select TRANSFER and click Bank Virtual Account.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 95.h, left: 30.w),
                              child: Text(
                                "Enter top up amount.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130.h, left: 30.w),
                              child: Text(
                                "Follow the next instructions to complete top-up.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Step(
                        isActive: true,
                        title: Text("Top up via m-Banking",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        content: Stack(
                          children: [
                            SvgPicture.asset("images/numbers.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 27.w),
                              child: Text(
                                "Insert your ATM card and enter your PIN.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h, left: 30.w),
                              child: Text(
                                "Select TRANSFER and click Bank Virtual Account.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 95.h, left: 30.w),
                              child: Text(
                                "Enter top up amount.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130.h, left: 30.w),
                              child: Text(
                                "Follow the next instructions to complete top-up.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Step(
                        isActive: true,
                        title: Text("Top up via Internet Banking",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        content: Stack(
                          children: [
                            SvgPicture.asset("images/numbers.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 27.w),
                              child: Text(
                                "Insert your ATM card and enter your PIN.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h, left: 30.w),
                              child: Text(
                                "Select TRANSFER and click Bank Virtual Account.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 95.h, left: 30.w),
                              child: Text(
                                "Enter top up amount.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130.h, left: 30.w),
                              child: Text(
                                "Follow the next instructions to complete top-up.",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                  ],
                  onStepCancel: () {
                    if (_currentindex != 0) {
                      setState(() {
                        _currentindex -= 1;
                      });
                    }
                  },
                  onStepContinue: () {
                    if (_currentindex != 2) {
                      setState(() {
                        _currentindex += 1;
                      });
                    }
                  },
                  currentStep: _currentindex,
                  onStepTapped: (int newindex) {
                    setState(() {
                      _currentindex = newindex;
                    });
                  },
                  controlsBuilder:
                      (BuildContext context, ControlsDetails details) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: details.onStepContinue,
                              child: const Text("Continue")),
                          FlatButton(
                            onPressed: details.onStepCancel,
                            child: Text("Cancel",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  List<Model> models = [
    Model(name: "BRI", logo: "images/BRI.svg"),
    Model(name: "DBS", logo: "images/DBS.svg"),
    Model(name: "Citibank", logo: "images/Citibank.svg"),
    Model(name: "DBS", logo: "images/DBS.svg"),
  ];
}

class Model {
  final String name;
  final String logo;

  Model({required this.name, required this.logo});
}

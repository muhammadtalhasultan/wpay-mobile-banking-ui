import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../top_up/bank_confirmation_page.dart';

class TransformBank extends StatefulWidget {
  const TransformBank({Key? key}) : super(key: key);

  @override
  State<TransformBank> createState() => _TransformBankState();
}

class _TransformBankState extends State<TransformBank> {
  final TextEditingController _controller =
      TextEditingController(text: "\$132.00");
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
              padding: EdgeInsets.only(left: 98.w, top: 66.h),
              child: Text(
                "Transfer with Bank",
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
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140.h, left: 163.w),
              child: Image.asset(
                "images/home_indicator.png",
                color: Theme.of(context).backgroundColor.withOpacity(0.1),
              ),
            ),
            // TODO texts //
            Padding(
                padding: EdgeInsets.only(top: 161.h, left: 16.w),
                child: Text("Bank Account",
                    style: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold))),
            Padding(
                padding: EdgeInsets.only(top: 211.h, left: 16.w),
                child: Text("Select bank",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, color: Colors.grey))),
            Padding(
                padding: EdgeInsets.only(top: 211.h, left: 16.w),
                child: Text("Select bank",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, color: Colors.grey))),

            Padding(
                padding: EdgeInsets.only(top: 340.h, left: 16.w),
                child: Text("Set amount",
                    style: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold))),

            Padding(
              padding: EdgeInsets.only(top: 210.h, left: 335.w),
              child: SvgPicture.asset("images/navgitorbottome.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 250.h, left: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 276.h, left: 16.w),
              child: TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  suffixIconColor: Colors.grey,
                  hintText: 'Account number',
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 314.h, left: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 407.h, left: 135.w),
              child: TextField(
                controller: _controller,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  suffixIconColor: Colors.grey,
                ),
                style: GoogleFonts.dmSans(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 454.h, left: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),

            Padding(
                padding: EdgeInsets.only(top: 369.h, left: 16.w),
                child: Text("How much would you like to transfer?",
                    style: GoogleFonts.dmSans(
                      color: Colors.grey,
                      fontSize: 16.sp,
                    ))),
            //TODO Tags //

            Padding(
              padding: EdgeInsets.only(top: 471.h, left: 46.w),
              child: InkWell(
                onTap: () => setState(() {
                  _controller.text = "\$100.00";
                }),
                child: Container(
                  alignment: Alignment.center,
                  width: 87.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: const Color(0xff4CD080).withOpacity(0.1)),
                  child: Text(
                    "\$100.00",
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp, color: const Color(0xff4CD080)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 471.h, left: 141.w),
              child: InkWell(
                onTap: () => setState(() {
                  _controller.text = "\$250.00";
                }),
                child: Container(
                  width: 87.w,
                  alignment: Alignment.center,
                  height: 36.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: const Color(0xff4CD080).withOpacity(0.1)),
                  child: Text(
                    "\$250.00",
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp, color: const Color(0xff4CD080)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 471.h, left: 238.w),
              child: InkWell(
                onTap: () => setState(() {
                  _controller.text = "\$500.00";
                }),
                child: Container(
                  alignment: Alignment.center,
                  width: 87.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: const Color(0xff4CD080).withOpacity(0.1)),
                  child: Text(
                    "\$500.00",
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp, color: const Color(0xff4CD080)),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 726.h, left: 13.w),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff4CD080),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 140.w, vertical: 18.h)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const BankConfirmation(),
                              type: PageTransitionType.fade));
                    },
                    child:
                        Text("Continue", style: TextStyle(fontSize: 16.sp)))),
          ],
        ));
  }
}

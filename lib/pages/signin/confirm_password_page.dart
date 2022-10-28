import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../transfer/payment_receipt_page.dart';

class ConfirmPasswordPage extends StatefulWidget {
  const ConfirmPasswordPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPasswordPage> createState() => _ConfirmPasswordPageState();
}

class _ConfirmPasswordPageState extends State<ConfirmPasswordPage> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 111.w, top: 66.h),
            child: Text(
              "Confirm Password",
              style: GoogleFonts.dmSans(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 124.h, left: 16.w),
            child: Text(
              "Please create a secure password\nincluding the following criteria below",
              style: GoogleFonts.dmSans(
                  fontSize: 18.sp, color: const Color(0xff8F92A1)),
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
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Icon(Icons.navigate_before,
                      color: Theme.of(context).primaryColor),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 198.h, left: 16.w),
            child: TextField(
              textInputAction: TextInputAction.done,
              obscureText: showpassword,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showpassword = !showpassword;
                      });
                    },
                    icon: Icon(
                      showpassword ? Icons.visibility_off : Icons.visibility,
                      color: Theme.of(context).primaryColor,
                    )),
                suffixIconColor: Colors.grey,
                hintText: 'Password',
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
            padding: EdgeInsets.only(top: 240.h, left: 16.w),
            child: Divider(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 260.h, left: 16.w),
            child: Text(
              "Must be least 8 characters.",
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 725.h, left: 16.w),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4CD080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 135.w, vertical: 20.h)),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const PaymentReceipt(),
                          type: PageTransitionType.fade));
                },
                child: Text("Continue", style: TextStyle(fontSize: 16.sp))),
          ),
        ],
      ),
    );
  }
}

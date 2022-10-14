// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'add_card_confirm_page.dart';

class ScanCard extends StatefulWidget {
  const ScanCard({Key? key}) : super(key: key);

  @override
  State<ScanCard> createState() => _ScanCardState();
}

class _ScanCardState extends State<ScanCard> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;

  void onCreditCardWidgetChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

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
              padding: EdgeInsets.only(left: 118.w, top: 66.h),
              child: Text(
                "Add New Card",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 124.h, left: 16.w),
              child: Text("Scan completed, now verify your data",
                  style: GoogleFonts.dmSans(
                      fontSize: 18.sp, color: const Color(0xffF2F2F2))),
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
              padding: EdgeInsets.only(top: 173.h),
              child: Container(
                width: 375.w,
                height: 639.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210.h),
              child: CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
                height: 176.h,
                textStyle: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                width: MediaQuery.of(context).size.width,
                animationDuration: const Duration(milliseconds: 1000),
                onCreditCardWidgetChange: (CreditCardBrand) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 400.h),
              child: CreditCardForm(
                formKey: formKey,
                onCreditCardModelChange: onCreditCardWidgetChange, // Required
                themeColor: Colors.red,
                obscureCvv: true,
                obscureNumber: true,
                cardNumberDecoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Card Number',
                  labelStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                  hintText: 'XXXX XXXX XXXX XXXX',
                  hintStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                ),
                expiryDateDecoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Expired Date',
                    labelStyle: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor),
                    hintText: 'XX/XX',
                    hintStyle: GoogleFonts.dmSans(
                        color: Theme.of(context).primaryColor)),
                cvvCodeDecoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'CVV',
                  labelStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                  hintText: 'XXX',
                  hintStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                ),
                cardHolderDecoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Card Holder',
                  labelStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                  hintStyle:
                      GoogleFonts.dmSans(color: Theme.of(context).primaryColor),
                ),
                cardHolderName: cardHolderName, cardNumber: '', cvvCode: '',
                expiryDate: '',
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 189.h, left: 163.w),
              child: Image.asset(
                "images/Home Indicator.png",
                color: Theme.of(context).backgroundColor.withOpacity(0.1),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 210.h, left: 16.w),
            //   child: Container(
            //     width: 343.w,
            //     height: 176.h,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16.r),
            //         color: Theme.of(context).backgroundColor.withOpacity(0.1)),
            //     child: Stack(children: [
            //       Padding(
            //         padding: EdgeInsets.only(top: 22.h, left: 282.w),
            //         child: SvgPicture.asset("images/Logobank.svg",
            //             color: Theme.of(context).primaryColor),
            //       ),
            // Padding(
            //   padding: EdgeInsets.only(top: 68.h, left: 16.w),
            //   child: SvgPicture.asset(
            //     "images/Chip.svg",
            //   ), // for chip card
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 73.h, left: 80.w),
            //   child: SvgPicture.asset(
            //     "images/Group 62.svg",
            //     color: Theme.of(context).primaryColor,
            //   ), // for chip card
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 140.h, left: 16.w),
            //   child: SvgPicture.asset("images/Group 144.svg",
            //       color: Theme.of(context).primaryColor), // for detail card
            // ),
            //     ]),
            //   ),
            // ),
            // // Padding(
            // //   padding: EdgeInsets.only(top: 210.h, left: 25.w),
            // //   child: SvgPicture.asset("images/Cardblank.svg"),
            // // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 210.h, left: 16.w),
            //   child: Container(
            //     width: 343.w,
            //     height: 176.h,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16.r),
            //         color: Theme.of(context).cardColor.withOpacity(0.3)),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 390.h, left: 16.w),
            //   child: TextField(
            //     textInputAction: TextInputAction.done,
            //     decoration: InputDecoration(
            //       enabledBorder: InputBorder.none,
            //       border: InputBorder.none,
            //       suffixIconColor: Colors.grey,
            //       hintText: 'Cardholder Name',
            //       hintStyle: GoogleFonts.dmSans(
            //         fontSize: 16.sp,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     style: GoogleFonts.dmSans(
            //       color: Theme.of(context).primaryColor,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 480.h, left: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 475.h, left: 319.w),
            //   child: SvgPicture.asset("images/mastercard-seeklogo.com 1.svg"),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 465.h, left: 16.w),
            //   child: TextField(
            //     onSubmitted: (cardnumber) {
            //       setState(() {
            //         _controllercardNumber.text = cardnumber;
            //       });
            //     },
            //     controller: _controllercardNumber,
            //     textInputAction: TextInputAction.done,
            //     decoration: InputDecoration(
            //       enabledBorder: InputBorder.none,
            //       border: InputBorder.none,
            //       suffixIconColor: Colors.grey,
            //       hintText: 'Card Number',
            //       hintStyle: GoogleFonts.dmSans(
            //         fontSize: 16.sp,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     style: GoogleFonts.dmSans(
            //       color: Theme.of(context).primaryColor,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 660.h, left: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 540.h, left: 16.w),
            //   child: TextField(
            //     textInputAction: TextInputAction.done,
            //     decoration: InputDecoration(
            //       enabledBorder: InputBorder.none,
            //       border: InputBorder.none,
            //       suffixIconColor: Colors.grey,
            //       hintText: 'Expiry Date',
            //       hintStyle: GoogleFonts.dmSans(
            //         fontSize: 16.sp,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     style: GoogleFonts.dmSans(
            //       color: Theme.of(context).primaryColor,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 570.h, left: 16.w, right: 200.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 540.h, left: 194.w),
            //   child: TextField(
            //     textInputAction: TextInputAction.done,
            //     decoration: InputDecoration(
            //       enabledBorder: InputBorder.none,
            //       border: InputBorder.none,
            //       suffixIconColor: Colors.grey,
            //       hintText: '3-digit CVV',
            //       hintStyle: GoogleFonts.dmSans(
            //         fontSize: 16.sp,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     style: GoogleFonts.dmSans(
            //       color: Theme.of(context).primaryColor,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 570.h, left: 194.w, right: 16.w),
              child: Divider(
                color: Theme.of(context).primaryColor,
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
                              child: const AddCardConfirm(),
                              type: PageTransitionType.fade));
                    },
                    child:
                        Text("Continue", style: TextStyle(fontSize: 16.sp)))),
          ],
        ),
      ),
    );
  }
}

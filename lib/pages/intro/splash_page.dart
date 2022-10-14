import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../intro/intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 450), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              child: const IntroPage(), type: PageTransitionType.fade));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff105D38),
      child: Center(child: SvgPicture.asset("images/Logo.svg")),
    );
  }
}

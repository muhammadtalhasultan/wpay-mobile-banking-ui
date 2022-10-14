import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/intro/splash_page.dart';
import 'util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: Mytheme.lightthem,
            darkTheme: Mytheme.darkthem,
            home: const SplashScreen(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rosales_mobprog/screens/home_screen.dart';
import 'package:rosales_mobprog/screens/newsfeed_screen.dart';
import 'package:rosales_mobprog/constants.dart';

void main() => runApp(const EpbehApp());

class EpbehApp extends StatelessWidget {
  const EpbehApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'appName',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: appPrimary),
            scaffoldBackgroundColor: appBackground,
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => NewsFeedScreen(),
            '/home': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
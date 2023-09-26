import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/welcome/welcome_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

    return MaterialApp(
      color: AppColors.yellow,
      theme: ThemeData(fontFamily: AppColors.fontFamilyInter),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:toxicity/config/config.dart';
// ignore: unused_import
import 'package:toxicity/ui/screens/processing/animated_progress.dart';
import 'package:toxicity/ui/screens/result/result.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({Key? key}) : super(key: key);

  @override
  State<ProcessingScreen> createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  File? file;
  ImagePicker image = ImagePicker();
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResultScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.05,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                border: Border.all(
                  color: AppColors.black.withOpacity(0.4),
                  width: 1,
                ),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Your google banner here",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.01,
                        fontFamily: "Inter",
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Antitoxic tip",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter",
                                height: 2.5,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(width: 6),
                        Transform.translate(
                          offset: const Offset(0, 2),
                          child: const Icon(
                            Icons.info_outline,
                            size: 19,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Don't hesitate to ask for help:\n",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  height: 1.25,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Don't hesitate to ask for help if you feel you can't handle the situation yourself.\nSeek help from professionals or organizations that can help you confront bullying.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  height: 1.25,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 146),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Processing",
                              style: TextStyle(
                                fontSize: 33,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 295,
                        child:
                            Lottie.asset('assets/gif/loader_animation.json')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

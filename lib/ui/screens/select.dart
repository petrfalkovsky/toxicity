import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/widgets/frame_background.dart';
import 'package:toxicity/ui/screens/widgets/shared/button.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.yellowColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomPaint(
                    painter: FrameMainScreen(
                      rotationAngle: 0,
                      position: Offset(
                        MediaQuery.of(context).size.width * -0.04,
                        MediaQuery.of(context).size.height * 0.18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.164,
                  child: Image.asset('assets/images/select-image-icon.png'),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                            text:
                                "For best results, the photo should clearly show one person's face.    If you can't see the person in the photo, or there are multiple people in the photo, the results may be poor.",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppConfig.whiteColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Inter",
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 63,
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryButton(
                        text: 'Camera',
                        onTap: () {},
                        startColor: AppConfig.yellowColor,
                        endColor: AppConfig.yellowColor,
                        width: MediaQuery.of(context).size.width * 0.43,
                      ),
                      PrimaryButton(
                        text: 'Gallery',
                        onTap: () {},
                        startColor: AppConfig.yellowColor,
                        endColor: AppConfig.yellowColor,
                        width: MediaQuery.of(context).size.width * 0.43,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Cancel",
                              style: TextStyle(
                                fontSize: 17,
                                color: AppConfig.blackColor,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 42,
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Select",
                          style: TextStyle(
                            fontSize: 33,
                            color: AppConfig.blackColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.01,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "the image source",
                          style: TextStyle(
                            fontSize: 33,
                            color: AppConfig.blackColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

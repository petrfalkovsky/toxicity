import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/select.dart';
import 'package:toxicity/ui/screens/widgets/shared/button.dart';
import 'package:toxicity/ui/screens/widgets/shared/modal_bottom_sheet.dart';
import 'widgets/frame_background.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
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
                        MediaQuery.of(context).size.width * 0.18,
                        MediaQuery.of(context).size.height * 0.45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Test runs left: 4",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppConfig.whiteColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.02,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                    const Spacer(),
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "get more runs",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppConfig.yellowColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.02,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  text: 'Run the test',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectScreen()),
                    );
                  },
                  startColor: AppConfig.yellowColor,
                  endColor: AppConfig.yellowColor,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/images/info-icon.png',
                          color: AppConfig.purpleColor,
                        ),
                        onPressed: () {
                          showModalMethod(context);
                        },
                        iconSize: 45,
                        padding: EdgeInsets
                            .zero, // убираем все внутренние отступы у IconButton
                        splashRadius: 80, // убираем радиус splash-эффекта
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "It's time to run",
                          style: TextStyle(
                            fontSize: 32,
                            color: AppConfig.blackColor,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.01,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "toxicity test!",
                          style: TextStyle(
                            fontSize: 48,
                            color: AppConfig.blackColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.01,
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

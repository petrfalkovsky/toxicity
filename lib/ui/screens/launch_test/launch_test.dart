// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/processing/animated_progress.dart';
import 'package:toxicity/ui/screens/processing/processing_screen.dart';
import 'package:toxicity/ui/screens/select/select.dart' as select;
import 'package:toxicity/ui/screens/widgets/shared/main_frame_background.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';

class LaunchTestScreen extends StatefulWidget {
  const LaunchTestScreen({Key? key, required this.methodName})
      : super(key: key);
  final String methodName;

  @override
  State<LaunchTestScreen> createState() => _LaunchTestScreenState();
}

class _LaunchTestScreenState extends State<LaunchTestScreen> {
  File? file;
  ImagePicker image = ImagePicker();

  @override
  void initState() {
    super.initState();
    if (widget.methodName == 'getcam') {
      getcam();
    } else if (widget.methodName == 'getgal') {
      getgall();
    }
  }

  void changeButtonPressed() {
    if (widget.methodName == 'getcam') {
      getcam();
    } else if (widget.methodName == 'getgal') {
      getgall();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.18,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width,
              child: file == null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Waiting for your device\n",
                              style: TextStyle(
                                fontSize: 24,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                            TextSpan(
                              text: "to figure out",
                              style: TextStyle(
                                fontSize: 24,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(height: 20),
                        const RotatingProgressBar(
                          color: AppColors.purple,
                        )
                      ],
                    )
                  : Image.file(
                      file!,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
            child: Stack(
              children: [
                const PurpleFrame(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PrimaryButton(
                      text: 'Launch the test',
                      onTap: () {
                        if (file == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Please choose at least one photo.'),
                              duration: Duration(seconds: 4),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProcessingScreen()),
                          );
                        }
                      },
                      startColor: AppColors.yellow,
                      endColor: AppColors.yellow,
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 30),
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
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.01,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.transparent,
                            shape: CircleBorder(),
                          ),
                          child: TextButton(
                            onPressed: changeButtonPressed,
                            child: RichText(
                              text: const TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: "Change",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: AppColors.black,
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
                    const SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getcam() async {
    try {
      var img = await image.pickImage(source: ImageSource.camera);
      if (img != null) {
        setState(() {
          file = File(img.path);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please choose at least one photo!!'),
            duration: Duration(seconds: 4),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const select.SelectScreen()),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please choose at least one photo!'),
          duration: Duration(seconds: 4),
        ),
      );
    }
  }

  getgall() async {
    try {
      var img = await image.pickImage(source: ImageSource.gallery);
      if (img != null) {
        setState(() {
          file = File(img.path);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please choose at least one photo!!'),
            duration: Duration(seconds: 2),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const select.SelectScreen()),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please choose at least one photo!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}

class PurpleFrame extends StatelessWidget {
  const PurpleFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomPaint(
            painter: FrameMainScreen(
                rotationAngle: 6.5,
                position: Offset(
                  MediaQuery.of(context).size.width * 0.28,
                  MediaQuery.of(context).size.height * 0.485,
                ),
                height: 0.6),
          ),
        ],
      ),
    );
  }
}

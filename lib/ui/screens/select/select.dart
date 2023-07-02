import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/general/general.dart';
import 'package:toxicity/ui/screens/launch_test/launch_test.dart';
import 'package:toxicity/ui/screens/widgets/shared/frame_background.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';

enum ImageSource {
  camera,
  gallery,
}

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
            const PurpleFrame(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SelectImageInCenter(),
                SizedBox(height: 32),
                PlaonTextAboveButtons(),
                SizedBox(height: 63),
                CameraAndGalleryButtons()
              ],
            ),
            Column(
              children: const [
                SizedBox(height: 30),
                CancelButton(),
                SizedBox(height: 42),
                Head()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Ink(
          decoration: const ShapeDecoration(
            color: Colors.transparent,
            shape: CircleBorder(),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const General(),
                ),
              );
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
    );
  }
}

class CameraAndGalleryButtons extends StatefulWidget {
  const CameraAndGalleryButtons({
    super.key,
  });

  @override
  State<CameraAndGalleryButtons> createState() =>
      _CameraAndGalleryButtonsState();
}

class _CameraAndGalleryButtonsState extends State<CameraAndGalleryButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryButton(
            text: 'Camera',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LaunchTestScreen(
                    methodName: 'getcam',
                  ),
                ),
              );
            },
            startColor: AppConfig.yellowColor,
            endColor: AppConfig.yellowColor,
            width: MediaQuery.of(context).size.width * 0.43,
          ),
          PrimaryButton(
            text: 'Gallery',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LaunchTestScreen(
                    methodName: 'getgal',
                  ),
                ),
              );
            },
            startColor: AppConfig.yellowColor,
            endColor: AppConfig.yellowColor,
            width: MediaQuery.of(context).size.width * 0.43,
          ),
        ],
      ),
    );
  }
}

class PlaonTextAboveButtons extends StatelessWidget {
  const PlaonTextAboveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class SelectImageInCenter extends StatelessWidget {
  const SelectImageInCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.164,
      child: Image.asset('assets/images/select-image-icon.png'),
    );
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
              rotationAngle: 0,
              position: Offset(
                MediaQuery.of(context).size.width * -0.04,
                MediaQuery.of(context).size.height * 0.18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

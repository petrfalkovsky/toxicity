import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

Future<dynamic> showModalAbout(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: AppConfig.yellowColor,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: const [
              Head(),
              IconClosePop(),
            ],
          ),
          const SizedBox(height: 26),
          const PlainText(),
          const SizedBox(height: 66)
        ],
      );
    },
  );
}

class PlainText extends StatelessWidget {
  const PlainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
            text:
                "Tap the close button at top-right, or simply swipe down to dismiss the sheet modal. \n\nIf you are using a partial modal, you can swipe up or down to expand or collapse the sheet modal.",
            style: TextStyle(
              fontSize: 16,
              color: AppConfig.blackColor,
              fontWeight: FontWeight.w400,
              height: 1.25,
              fontFamily: "Inter",
            ),
          ),
        ]),
      ),
    );
  }
}

class IconClosePop extends StatelessWidget {
  const IconClosePop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Ink(
        width: 63,
        height: 63,
        decoration: const ShapeDecoration(
          color: Colors.transparent,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Image.asset(
            'assets/images/close.png',
            color: AppConfig.purpleColor,
            width: 30,
            height: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          padding: EdgeInsets.zero,
          splashRadius: 80,
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
    return const Padding(
      padding: EdgeInsets.only(top: 70),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            'About App',
            style: TextStyle(
              fontSize: 33,
              color: AppConfig.blackColor,
              fontWeight: FontWeight.w400,
              height: 1.25,
              fontFamily: "Inter",
            ),
          )),
    );
  }
}

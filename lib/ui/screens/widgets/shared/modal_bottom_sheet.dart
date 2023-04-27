import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/widgets/shared/icon-close.dart';

Future<dynamic> showModalMethod(BuildContext context) {
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
            children: [
              const Padding(
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
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon:
                      // Image.asset(
                      //   'assets/images/close-button.jpg',
                      //   color: AppConfig.purpleColor,
                      // ),
                      CustomPaint(
                    painter: IconClose(
                      rotationAngle: 0,
                      position: Offset(
                        MediaQuery.of(context).size.width * -0.06,
                        MediaQuery.of(context).size.height * 0.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
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
          ),
          const SizedBox(
            height: 66,
          )
        ],
      );
    },
  );
}

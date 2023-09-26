import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

Future<dynamic> showModalPay(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: AppColors.white,
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
              PlainTextInCenter(),
              IconCloseButton(),
            ],
          ),
          const SizedBox(height: 180)
        ],
      );
    },
  );
}

class IconCloseButton extends StatelessWidget {
  const IconCloseButton({
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
            color: AppColors.purple,
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

class PlainTextInCenter extends StatelessWidget {
  const PlainTextInCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Окно оплаты маркета",
                  style: TextStyle(
                    fontSize: 33,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}

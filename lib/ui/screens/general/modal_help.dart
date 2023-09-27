import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';

Future<dynamic> showModalHelp(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: AppColors.purple,
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
          const SizedBox(height: 66),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: PrimaryButton(
              text: 'SEND A MAIL',
              onTap: () {},
              textColor: AppColors.black,
              endColor: AppColors.yellow,
              startColor: AppColors.yellow,
            ),
          ),
          const SizedBox(height: 42),
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
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
            text:
                "If you have any questions or issues with using our app, please email us at test@mail.ru and we will do our best to assist you. \n\nYour feedback is valuable to us, and we aim to provide you with the best support possible.",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
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
            color: AppColors.white,
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
      padding: EdgeInsets.only(top: 16),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            'Help and feedback',
            style: TextStyle(
              fontSize: 24,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
              height: 1.25,
              fontFamily: "Inter",
            ),
          )),
    );
  }
}

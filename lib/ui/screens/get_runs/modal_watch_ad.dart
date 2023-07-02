import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class WatchAdScreen extends StatefulWidget {
  const WatchAdScreen({Key? key}) : super(key: key);

  @override
  State<WatchAdScreen> createState() => _WatchAdScreenState();
}

class _WatchAdScreenState extends State<WatchAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConfig.purpleColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
          child: Column(
            children: const [
              IconCloseButton(),
              PlainTextInCenter(),
            ],
          ),
        ));
  }
}

class PlainTextInCenter extends StatelessWidget {
  const PlainTextInCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Сценарий просмотра роликов с AdMob",
              style: TextStyle(
                fontSize: 33,
                color: AppConfig.whiteColor,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class IconCloseButton extends StatelessWidget {
  const IconCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Ink(
          width: 63,
          height: 63,
          decoration: const ShapeDecoration(
            color: Colors.transparent,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: AppConfig.whiteColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.zero,
            splashRadius: 80,
          ),
        ),
      ],
    );
  }
}

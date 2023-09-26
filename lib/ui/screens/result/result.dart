import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/get_runs/modal_get_runs.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  File? file;
  ImagePicker image = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 12,
                          child: PrimaryButton(
                            text: 'Share the result',
                            onTap: () {
                              Share.share(
                                  'check out my website https://example.com',
                                  subject: 'Look what I made!');
                            },
                            startColor: AppColors.purple,
                            endColor: AppColors.purple,
                            width: MediaQuery.of(context).size.width,
                            borderColor: AppColors.purple,
                            textColor: AppColors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        PrimaryButton(
                          onTap: () {},
                          startColor: AppColors.yellow,
                          endColor: AppColors.yellow,
                          width: 55,
                          borderColor: AppColors.purple,
                          textColor: AppColors.purple,
                          iconAssetPath: 'assets/images/download.png',
                        )
                      ],
                    ),
                    const SizedBox(height: 108),
                    Row(
                      children: const [
                        PlainTextTestRunsLeft(),
                        Spacer(),
                        GetMoreRunsButton()
                      ],
                    ),
                    const LaunchAgainButton()
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
                              text: "Here is your result",
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
                    const SizedBox(height: 50),
                    Container(
                      color: AppColors.black,
                      height: 30,
                      width: 30,
                    )
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

class LaunchAgainButton extends StatelessWidget {
  const LaunchAgainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Launch again',
      onTap: () {},
      startColor: AppColors.yellow,
      endColor: AppColors.yellow,
      width: MediaQuery.of(context).size.width,
      borderColor: AppColors.purple,
      textColor: AppColors.purple,
    );
  }
}

class GetMoreRunsButton extends StatelessWidget {
  const GetMoreRunsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalGetRuns(context);
      },
      child: RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
            text: "get more runs",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.purple,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02,
              fontFamily: "Inter",
            ),
          ),
        ]),
      ),
    );
  }
}

class PlainTextTestRunsLeft extends StatelessWidget {
  const PlainTextTestRunsLeft({
    super.key,
  });

  /// TODO: реализовать функционал скачать результат
  /// TODO: написать логику смены состояний и чтобы попытки уменьшались

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: "Test runs left:  ",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.black.withOpacity(0.5),
            fontWeight: FontWeight.w400,
            letterSpacing: -0.02,
            fontFamily: "Inter",
          ),
        ),
        const TextSpan(
          text: "4",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.purple,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.02,
            fontFamily: "Inter",
          ),
        ),
      ]),
    );
  }
}

Future<dynamic> showModalGetRuns(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return const GetRunsScreen();
    },
  );
}

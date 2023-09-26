import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/get_runs/modal_pay.dart';
import 'package:toxicity/ui/screens/get_runs/modal_watch_ad.dart';
import 'package:toxicity/ui/screens/result/result.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';

class GetRunsScreen extends StatefulWidget {
  const GetRunsScreen({Key? key}) : super(key: key);

  @override
  State<GetRunsScreen> createState() => _GetRunsScreenState();
}

class _GetRunsScreenState extends State<GetRunsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Padding(
        padding: EdgeInsets.only(
            top: 65,
            bottom: MediaQuery.of(context).size.width * 0.1,
            left: 24,
            right: 24),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 40),
                PlaintTextAboveButton(),
                SizedBox(height: 18),
                WatchAdButton(),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 2),
                const CancelButton(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Column(
                  children: [
                    const RunOnBalanceContainer(),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.038),
                    const Head(),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.022),
                    const TenRunsContainer(),
                    const SizedBox(height: 16),
                    const TwentyFiveRunsContainer(),
                    const FifyRunsContainer(),
                    const HundredRunsContainer(),
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

class HundredRunsContainer extends StatelessWidget {
  const HundredRunsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalPay(context);
      },
      child: Container(
        height: 77,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColors.white.withOpacity(0),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 12,
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "100",
                      style: TextStyle(
                        fontSize: 46,
                        color: AppColors.yellow,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.01,
                        fontFamily: "Inter",
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 14,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Runs",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.01,
                          fontFamily: "Inter",
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Expanded(
                  flex: 12,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "6,99 \$",
                          style: TextStyle(
                            fontSize: 26,
                            color: AppColors.yellow,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.01,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class FifyRunsContainer extends StatelessWidget {
  const FifyRunsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              showModalPay(context);
            },
            child: Container(
              height: 77,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: AppColors.white.withOpacity(0),
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: RichText(
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "50",
                            style: TextStyle(
                              fontSize: 46,
                              color: AppColors.yellow,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.01,
                              fontFamily: "Inter",
                              textBaseline: TextBaseline.alphabetic,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 14,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Runs",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "3,99 \$",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: AppColors.yellow,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.01,
                                  fontFamily: "Inter",
                                ),
                              ),
                            ]),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TwentyFiveRunsContainer extends StatelessWidget {
  const TwentyFiveRunsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              showModalPay(context);
            },
            child: Container(
              height: 77,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: AppColors.yellow.withOpacity(1),
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: RichText(
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "25",
                            style: TextStyle(
                              fontSize: 46,
                              color: AppColors.yellow,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.01,
                              fontFamily: "Inter",
                              textBaseline: TextBaseline.alphabetic,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 14,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Runs",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.01,
                                fontFamily: "Inter",
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "1,99 \$",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: AppColors.yellow,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.01,
                                  fontFamily: "Inter",
                                ),
                              ),
                            ]),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: Container(
              width: 92,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.yellowAccent.withOpacity(1),
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Most popular",
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.01,
                          fontFamily: "Inter",
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TenRunsContainer extends StatelessWidget {
  const TenRunsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalPay(context);
      },
      child: Container(
        height: 77,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColors.white.withOpacity(0),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "10",
                      style: TextStyle(
                        fontSize: 46,
                        color: AppColors.yellow,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.01,
                        fontFamily: "Inter",
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 13,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Runs",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.01,
                          fontFamily: "Inter",
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "0,99 \$",
                          style: TextStyle(
                            fontSize: 26,
                            color: AppColors.yellow,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.01,
                            fontFamily: "Inter",
                          ),
                        ),
                      ]),
                    ),
                  )),
            ],
          ),
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
    return RichText(
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text: "Get more runs",
          style: TextStyle(
            fontSize: 33,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            fontFamily: "Inter",
          ),
        ),
      ]),
    );
  }
}

class RunOnBalanceContainer extends StatelessWidget {
  const RunOnBalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColors.white.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "4",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.yellow,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.01,
                        fontFamily: "Inter",
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 20,
                child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Runs on balance",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.01,
                        fontFamily: "Inter",
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.transparent,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.info_outline),
                      color: AppColors.yellow,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResultScreen()));
                      },
                      iconSize: 20,
                      splashRadius: 80,
                    ),
                  )),
            ],
          ),
        ),
      ),
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
              Navigator.pop(context);
            },
            child: RichText(
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Cancel",
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.white,
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

class WatchAdButton extends StatelessWidget {
  const WatchAdButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Watch Ad',
      onTap: () {
        showModalWatchAd(context);
      },
      startColor: AppColors.purple,
      endColor: AppColors.purple,
      width: MediaQuery.of(context).size.width,
      height: 46,
      borderColor: AppColors.yellow,
      textColor: AppColors.yellow,
    );
  }
}

class PlaintTextAboveButton extends StatelessWidget {
  const PlaintTextAboveButton({
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
                text: "Watch ad to get mo runs",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Inter",
                  letterSpacing: -0.02,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

Future<dynamic> showModalWatchAd(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return const WatchAdScreen();
    },
  );
}

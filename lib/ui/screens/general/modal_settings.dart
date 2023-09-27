import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/general/modal_help.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30 + 48),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        LangLine(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        PrivacyLine(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                InkWell(
                  onTap: () => showModalHelp(context),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        HelpLine(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        LogOutLine(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                const CancelButton(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Head(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.038),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.022),
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

class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text: "Settings",
          style: TextStyle(
            fontSize: 33,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "Inter",
          ),
        ),
      ]),
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

class LangLine extends StatelessWidget {
  const LangLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SizedBox(
            width: 40,
            child: Image.asset(
              'assets/icons/britain_flag_icon.png',
            ),
          ),
        ),
        const SizedBox(width: 18),
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "English",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.yellow,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                letterSpacing: -0.02,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class PrivacyLine extends StatelessWidget {
  const PrivacyLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SizedBox(
            width: 40,
            child: Image.asset(
              'assets/icons/sheeld_icon.png',
            ),
          ),
        ),
        const SizedBox(width: 18),
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Privacy",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.yellow,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                letterSpacing: -0.02,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class HelpLine extends StatelessWidget {
  const HelpLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SizedBox(
            width: 40,
            child: Image.asset(
              'assets/icons/help_icon.png',
            ),
          ),
        ),
        const SizedBox(width: 18),
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Help and feedback",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.yellow,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                letterSpacing: -0.02,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class LogOutLine extends StatelessWidget {
  const LogOutLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 4),
        InkWell(
          child: SizedBox(
            width: 40,
            child: Image.asset(
              'assets/icons/log_out_icon.png',
            ),
          ),
        ),
        const SizedBox(width: 18),
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Log out",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.yellow,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                letterSpacing: -0.02,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

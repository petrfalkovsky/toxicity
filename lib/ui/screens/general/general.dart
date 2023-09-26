import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/select/select.dart';
import 'package:toxicity/ui/screens/get_runs/modal_get_runs.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';
import 'package:toxicity/ui/screens/general/modal_about.dart';
import '../widgets/shared/main_frame_background.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 65, bottom: 48, left: 24, right: 24),
        child: Stack(
          children: [
            const PurpleFrame(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PlainTextTestRunsLeft(),
                    Spacer(),
                    GetMoreRunsButton()
                  ],
                ),
                const SizedBox(height: 0),
                const RunTestButton(),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 30),
                const InfoIconButton(),
                const SizedBox(height: 60),
                Column(
                  children: const [ItsTimePlainText(), Head()],
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
          text: "toxicity test!",
          style: TextStyle(
            fontSize: 48,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.01,
            fontFamily: "Inter",
          ),
        ),
      ]),
    );
  }
}

class ItsTimePlainText extends StatelessWidget {
  const ItsTimePlainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text: "It's time to run",
          style: TextStyle(
            fontSize: 32,
            color: AppColors.black,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.01,
            fontFamily: "Inter",
          ),
        ),
      ]),
    );
  }
}

class InfoIconButton extends StatelessWidget {
  const InfoIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Ink(
          decoration: const ShapeDecoration(
            color: Colors.transparent,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Image.asset(
              'assets/images/info-icon.png',
              color: AppColors.purple,
            ),
            onPressed: () {
              // TODO: удалить, создано для тестирования, по этой кнопке нет сценария
              showModalAbout(context);
            },
            iconSize: 45,
            padding: EdgeInsets.zero,
            splashRadius: 80,
          ),
        )
      ],
    );
  }
}

class RunTestButton extends StatelessWidget {
  const RunTestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Run the test',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SelectScreen()),
        );
      },
      startColor: AppColors.yellow,
      endColor: AppColors.yellow,
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
              color: AppColors.yellow,
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

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text: "Test runs left:  ",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.02,
            fontFamily: "Inter",
          ),
        ),
        TextSpan(
          text: "4",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.yellow,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.02,
            fontFamily: "Inter",
          ),
        ),
      ]),
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
                MediaQuery.of(context).size.width * 0.18,
                MediaQuery.of(context).size.height * 0.45,
              ),
            ),
          ),
        ],
      ),
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

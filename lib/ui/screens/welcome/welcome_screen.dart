import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';
import 'package:toxicity/ui/screens/general/general.dart';
import 'package:toxicity/ui/screens/widgets/shared/primary_button.dart';
import 'package:toxicity/ui/screens/widgets/shared/welcome_frame_background.dart';

enum ImageSource {
  camera,
  gallery,
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              children: const [
                Head(),
                SizedBox(height: 65),
                LoginForm(),
                SizedBox(height: 52),
                PlainTextAboveButtons(),
                SizedBox(height: 16),
                GoogleFacebookButtons(),
                SizedBox(height: 50),
                AlredyTextLine(),
              ],
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 100),
                ],
              ),
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
              text: "Sign up",
              style: TextStyle(
                fontSize: 48,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.01,
                fontFamily: "Inter",
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class GoogleFacebookButtons extends StatefulWidget {
  const GoogleFacebookButtons({
    super.key,
  });

  @override
  State<GoogleFacebookButtons> createState() => _GoogleFacebookButtonsState();
}

class _GoogleFacebookButtonsState extends State<GoogleFacebookButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryButton(
            iconAssetPath: 'assets/images/google_logo.png',
            assetIconHeight: 20,
            borderColor: AppColors.yellow,
            text: ' Google',
            textColor: AppColors.yellow,
            onTap: () {},
            startColor: Colors.transparent,
            endColor: Colors.transparent,
            height: 46,
            width: MediaQuery.of(context).size.width * 0.43,
          ),
          PrimaryButton(
            iconAssetPath: 'assets/images/facebook_logo.png',
            assetIconHeight: 22,
            borderColor: AppColors.yellow,
            text: ' Facebook',
            textColor: AppColors.yellow,
            onTap: () {},
            startColor: Colors.transparent,
            endColor: Colors.transparent,
            height: 46,
            width: MediaQuery.of(context).size.width * 0.43,
          ),
        ],
      ),
    );
  }
}

class PlainTextAboveButtons extends StatelessWidget {
  const PlainTextAboveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Or continue with",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.lightPurple,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class AlredyTextLine extends StatelessWidget {
  const AlredyTextLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.lightPurple,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
              ),
            ),
          ]),
        ),
        TextButton(
          onPressed: () {},
          child: RichText(
            text: const TextSpan(children: <TextSpan>[
              TextSpan(
                text: "Login",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.yellow,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Inter",
                ),
              ),
            ]),
          ),
        )
      ],
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
            painter: FrameWelcomeScreen(
              rotationAngle: 0,
              position: Offset(
                MediaQuery.of(context).size.width * -0.5,
                MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const TextField(
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow, width: 2.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow, width: 2.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.yellow, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 45.0), // Расстояние между полями
          PrimaryButton(
            text: 'Sign up'.toUpperCase(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const General(),
                ),
              );
            },
            startColor: AppColors.yellow,
            endColor: AppColors.yellow,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

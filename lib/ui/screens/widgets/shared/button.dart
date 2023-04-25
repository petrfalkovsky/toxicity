import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class PrimaryButton extends StatefulWidget {
  final String? text;
  final Function() onTap;
  final Color startColor;
  final Color endColor;
  final RichText? richText;

  const PrimaryButton({
    Key? key,
    this.text,
    required this.onTap,
    required this.startColor,
    required this.endColor,
    this.richText,
  }) : super(key: key);

  @override
  PrimaryButtonState createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  widget.startColor,
                  widget.endColor,
                ])),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: widget.richText ??
                Text(
                  widget.text?.toUpperCase() ?? 'Continue',
                  style: const TextStyle(
                      color: AppConfig.blackColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class PrimaryButton extends StatefulWidget {
  final String? text;
  final Function() onTap;
  final Color startColor;
  final Color endColor;
  final RichText? richText;
  final double? width;
  final double? height;
  final Color? borderColor;
  final Color? textColor;
  // icons if you use standart icons from flutter lib
  final IconData? icon;
  // icon or any image if you wanna use asset from project
  final String? iconAssetPath;

  const PrimaryButton({
    Key? key,
    this.text,
    required this.onTap,
    required this.startColor,
    required this.endColor,
    this.richText,
    this.width,
    this.height,
    this.borderColor,
    this.textColor,
    this.icon,
    this.iconAssetPath,
  }) : super(key: key);

  @override
  PrimaryButtonState createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = widget.width ?? MediaQuery.of(context).size.width;
    double height = widget.height ?? 55;

    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                widget.startColor,
                widget.endColor,
              ],
            ),
            border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: 2,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: widget.richText ??
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    widget.iconAssetPath != null
                        ? Image.asset(widget.iconAssetPath!)
                        : Container(),
                    if (widget.icon != null)
                      IconButton(
                        onPressed: () {},
                        icon: Icon(widget.icon,
                            color: widget.textColor ?? defaultTextColor),
                      ),
                    Text(
                      widget.text?.toUpperCase() ?? '',
                      style: TextStyle(
                        color: widget.textColor ?? defaultTextColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}

const Color defaultTextColor = AppConfig.blackColor;

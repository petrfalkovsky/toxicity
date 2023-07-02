// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class RotatingProgressBar extends StatefulWidget {
  final double size;
  final Color color;

  const RotatingProgressBar({
    super.key,
    this.size = 50,
    this.color = AppConfig.purpleColor,
  });

  @override
  _RotatingProgressBarState createState() => _RotatingProgressBarState();
}

class _RotatingProgressBarState extends State<RotatingProgressBar> {
  late Timer timer;
  double rotationAngle = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        rotationAngle += 0.1;
        if (rotationAngle > 360) {
          rotationAngle = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(widget.color),
          strokeWidth: widget.size * 0.1,
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

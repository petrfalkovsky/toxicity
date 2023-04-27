import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class IconClose extends CustomPainter {
  final double rotationAngle;
  final Offset position;

  IconClose({required this.rotationAngle, required this.position});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();
    path_1.moveTo(9.32314, 20.677);
    path_1.cubicTo(9.46288, 20.8167, 9.62882, 20.9127, 9.82096, 20.9651);
    path_1.cubicTo(10.0189, 21.0116, 10.214, 21.0116, 10.4061, 20.9651);
    path_1.cubicTo(10.6041, 20.9127, 10.7729, 20.8196, 10.9127, 20.6857);
    path_1.lineTo(15, 16.5911);
    path_1.lineTo(19.0961, 20.677);
    path_1.cubicTo(19.2358, 20.8225, 19.3988, 20.9185, 19.5852, 20.9651);
    path_1.cubicTo(19.7773, 21.0116, 19.9694, 21.0116, 20.1616, 20.9651);
    path_1.cubicTo(20.3595, 20.9127, 20.5284, 20.8138, 20.6681, 20.6682);
    path_1.cubicTo(20.8195, 20.5286, 20.9185, 20.3627, 20.9651, 20.1706);
    path_1.cubicTo(21.0116, 19.9727, 21.0116, 19.7777, 20.9651, 19.5857);
    path_1.cubicTo(20.9185, 19.3936, 20.8224, 19.2277, 20.6769, 19.088);
    path_1.lineTo(16.5983, 14.9935);
    path_1.lineTo(20.6769, 10.9076);
    path_1.cubicTo(20.8224, 10.7679, 20.9185, 10.602, 20.9651, 10.41);
    path_1.cubicTo(21.0116, 10.2179, 21.0116, 10.0258, 20.9651, 9.83376);
    path_1.cubicTo(20.9185, 9.63587, 20.8195, 9.46708, 20.6681, 9.32739);
    path_1.cubicTo(20.5284, 9.18188, 20.3595, 9.08585, 20.1616, 9.03929);
    path_1.cubicTo(19.9694, 8.9869, 19.7773, 8.9869, 19.5852, 9.03929);
    path_1.cubicTo(19.3988, 9.08585, 19.2358, 9.17897, 19.0961, 9.31866);
    path_1.lineTo(15, 13.4045);
    path_1.lineTo(10.9127, 9.30993);
    path_1.cubicTo(10.7729, 9.17606, 10.6041, 9.08585, 10.4061, 9.03929);
    path_1.cubicTo(10.214, 8.9869, 10.0189, 8.9869, 9.82096, 9.03929);
    path_1.cubicTo(9.62882, 9.08585, 9.46288, 9.17897, 9.32314, 9.31866);
    path_1.cubicTo(9.17758, 9.46417, 9.08151, 9.63587, 9.03493, 9.83376);
    path_1.cubicTo(8.98836, 10.0258, 8.98836, 10.2179, 9.03493, 10.41);
    path_1.cubicTo(9.08151, 10.602, 9.17467, 10.7679, 9.31441, 10.9076);
    path_1.lineTo(13.4105, 14.9935);
    path_1.lineTo(9.31441, 19.088);
    path_1.cubicTo(9.17467, 19.2277, 9.08151, 19.3936, 9.03493, 19.5857);
    path_1.cubicTo(8.98836, 19.7777, 8.98836, 19.9727, 9.03493, 20.1706);
    path_1.cubicTo(9.08151, 20.3627, 9.17758, 20.5315, 9.32314, 20.677);
    path_1.close();

    // control the horizontal and vertical position of the purple frame
    canvas.translate(position.dx, position.dy);
    canvas.rotate(rotationAngle * pi / 180);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppConfig.purpleColor.withOpacity(1.0);
    canvas.drawPath(path_1, paint0Fill);
  }

  @override
  bool shouldRepaint(IconClose oldDelegate) => false;
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
}

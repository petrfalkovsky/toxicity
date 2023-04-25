import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity/config/config.dart';

class FrameMainScreen extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.rotate(48.57 * pi / 180);

    Path path_0 = Path();
    path_0.moveTo(-128.156, 246.162);
    path_0.cubicTo(-162.829, 266.733, -166.611, 240.742, -164.167, 225.175);
    path_0.cubicTo(-201.814, 232.234, -278.665, 247.461, -284.892, 251.901);
    path_0.cubicTo(-291.119, 256.341, 63.9351, 529.761, 242.241, 665.916);
    path_0.lineTo(678.004, 258.309);
    path_0.lineTo(479.464, 41.7373);
    path_0.cubicTo(478.562, 42.5328, 474.302, 45.1051, 464.472, 49.0305);
    path_0.cubicTo(452.184, 53.9373, 429.904, 62.386, 435.589, 23.7325);
    path_0.cubicTo(440.137, -7.19026, 423.138, -1.11522, 414.069, 5.78765);
    path_0.cubicTo(396.538, 14.0025, 358.789, 31.352, 348.042, 35.0313);
    path_0.cubicTo(334.609, 39.6303, 328.554, 33.7605, 322.585, 24.518);
    path_0.cubicTo(316.616, 15.2755, 308.595, 11.1413, 296.472, 15.2433);
    path_0.cubicTo(286.774, 18.525, 275.444, 26.7637, 270.991, 30.4729);
    path_0.cubicTo(257.88, 41.3834, 228.527, 64.1186, 216.011, 67.7757);
    path_0.cubicTo(200.367, 72.3471, 199.06, 68.8837, 194.976, 57.3178);
    path_0.cubicTo(190.893, 45.752, 178.527, 46.1106, 168.201, 55.2224);
    path_0.cubicTo(159.941, 62.5119, 137.385, 85.0536, 127.14, 95.4132);
    path_0.cubicTo(108.838, 110.024, 67.6807, 141.417, 49.4612, 150.107);
    path_0.cubicTo(31.2417, 158.798, 30.6315, 145.618, 32.6038, 137.941);
    path_0.cubicTo(36.8967, 129.756, 44.9094, 113.233, 42.6172, 112.617);
    path_0.cubicTo(32.3815, 112.416, 25.6584, 121.646, 0.584566, 139.814);
    path_0.cubicTo(-24.4893, 157.982, -84.8149, 220.448, -128.156, 246.162);
    path_0.close();

    // control the horizontal and vertical position of the purple frame
    path_0 = path_0.shift(const Offset(10, 527));

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppConfig.purpleColor.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(FrameMainScreen oldDelegate) => false;
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
}

import 'package:flutter/material.dart';

class NormalCurvePainter extends CustomPainter {
  NormalCurvePainter({this.color, this.circleSize});

  final Color color;
  final double circleSize;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = this.color;

    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(this.circleSize / 2, this.circleSize / 2);

    // draw the circle on centre of canvas having radius 75.0
    canvas.drawCircle(center, this.circleSize / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
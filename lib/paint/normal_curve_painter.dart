import 'package:flutter/material.dart';

class NormalCurvePainter extends CustomPainter {
  NormalCurvePainter({this.color, this.circleSize});

  final Color color;
  final double circleSize;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = this.color;
    var center = Offset(this.circleSize / 2, this.circleSize / 2);
    canvas.drawCircle(center, this.circleSize / 2, paint);

    canvas.drawOval(Rect.fromCenter(center: center, width: 50.0, height: 60.0), paint);

    var path = Path();
    path.moveTo(0, this.circleSize / 2);


    path.cubicTo(0, this.circleSize, -this.circleSize / 1.5, this.circleSize,  0, this.circleSize);
    // path.quadraticBezierTo(0 - 20.0, this.circleSize, 0, this.circleSize);
    path.lineTo(this.circleSize, this.circleSize);
    path.close();
    canvas.drawPath(path, paint);


    path.moveTo(this.circleSize, this.circleSize / 2);
    

    path.cubicTo(this.circleSize, this.circleSize, 1.75*this.circleSize, this.circleSize,  this.circleSize, this.circleSize);
    path.lineTo(this.circleSize / 2, this.circleSize);
    path.lineTo(this.circleSize, this.circleSize / 2);
    // path.lineTo(this.circleSize, this.circleSize / 2);
    // path.quadraticBezierTo(size.width*0.25, size.height*0.77, size.width*0.52, size.height*0.84);
    // path.quadraticBezierTo(size.width*0.74, size.height*0.92, size.width, size.height*0.84);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
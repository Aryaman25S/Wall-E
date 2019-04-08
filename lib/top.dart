import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  //being used on main page
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 200.0,
      ),
      painter: CurvePainter1(),
    );
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.27, size.height * 1.20,
        size.width * 0.35, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 1.00,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.90, size.height * 0.10,
        size.width * 1.00, size.height * 0.95);
    path.quadraticBezierTo(
        size.width * 1.00, size.height * 0.90, size.width, size.height * 0.00);
    path.close();

    paint.color = Colors.orange[200];
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.25, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.45, size.height * 1.00,
        size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.50);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Colors.orange[400];
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.25,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.30,
        size.width * 0.70, size.height * 0.49);
    path.quadraticBezierTo(size.width * 0.89, size.height * 0.75,
        size.width * 1.00, size.height * 0.50);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Colors.orange[600];
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class OtherBar extends StatelessWidget {
  //being used on Switch page
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 200.0,
      ),
      painter: CurvePainter2(),
    );
  }
}

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    paint.color = Colors.orange[200];
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.55);
    path.close();

    paint.color = Colors.orange[600];
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Colors.orange[400];
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

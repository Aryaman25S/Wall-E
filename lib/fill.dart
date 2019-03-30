import 'package:flutter/material.dart';

class FillLevel extends StatelessWidget{
  final int per;
  FillLevel(this.per);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(child: Container(height: 200.0,),painter: Indicator(per),);
  }
}

class Indicator extends CustomPainter{

  int fill;
  Indicator(this.fill);
  
  MaterialColor yellow = Colors.yellow;
  MaterialColor green = Colors.green;
  MaterialColor red = Colors.red;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(130.0, 140.0+(1.40*(100-fill))); //change 140 to variable
    path.lineTo(130.0, 280.0);
    path.lineTo(290.0, 280.0);
    path.lineTo(290.0, 140.0+(1.40*(100-fill)));
    path.close();

   paint.color = Colors.green;
   canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
  }

}
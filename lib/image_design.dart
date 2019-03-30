import 'package:flutter/material.dart';
import './fill.dart' as fl;

class ImageDesign extends StatelessWidget {
  final int per;
  ImageDesign(this.per);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          fl.FillLevel(per),
          Center(
            child: Container(
              child: Text(
                '$per',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 30, height: 8),
              ),
              height: 370.0,
              width: 370.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/wallE.png'),
                  alignment: Alignment.center,
                ),
              ),
              margin: EdgeInsets.all(0.0),
            ),
          ),
        ],
      ),
    );
  }
}

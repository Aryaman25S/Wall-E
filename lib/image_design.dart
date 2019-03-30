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
          fl.FillLevel(),
          Center(
            child: Container(
              child: Text('$per', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,height: 8),),
              /*child: Container(
                child: Text('76', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 1),),
                margin: EdgeInsets.all(200),
              ),*/
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
          //Stack(children: <Widget>[Text('76',)],)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './top.dart' as tp;

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Stack(
              children: <Widget>[
                tp.TopBar(),
                Container(
                  margin: EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Percentage Bin Filled:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                //Text('$_fill'),
              ],
            ),
          );
  }
}
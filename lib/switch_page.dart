import 'package:flutter/material.dart';
import './top.dart' as tp;

class SwitchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchPageState();
  }
}

class SwitchPageState extends State<SwitchPage>{
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lid Settings'),
      ),
      body: Column(
        children: <Widget>[
          tp.OtherBar(),
          Center(
            child: Text(
              'Turn auto lid opening functionality ON/OFF:',
              style: TextStyle(
                height: 5.0,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Switch(value: isSwitched,onChanged: (value){
            setState(() {
              isSwitched = value;
            });
          },activeTrackColor: Colors.orangeAccent, activeColor: Colors.orange,),
          Container(
            child: Column(
              children: <Widget>[Center()],
            ),
          ),
        ],
      ),
    );
  }
}

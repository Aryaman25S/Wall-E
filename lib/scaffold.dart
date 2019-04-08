import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:firebase_database/firebase_database.dart';
import './header.dart';
//import './lid_button.dart';
import './image_design.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;

class Scaff extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Scaff();
  }
}

class _Scaff extends State<Scaff> {
  int percent = 0;
  String state = 'open';
  String fultra;
  bool ref;

  void getdata() {
    print('pop');
    database.reference().child("State").once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> data = snapshot.value;

      setState(() {

        fultra = data["f_ultra"];

        print(fultra);

        if(fultra == "on"){
          percent = data["percent_filled"];
          print(percent);
        }
        else{
          database.reference().child("State").update({"refresh": true});
          ref = true;
          print(ref);
          while(ref==true){
            setState(() {
              database.reference().child("State").once().then((DataSnapshot snapshot) {
              Map<dynamic, dynamic> data = snapshot.value;
              ref = data["refresh"];
              // setState(() {
              //   ref = data["refresh"];
              // });
              print(ref);
            });
            });
            Future.delayed(Duration(milliseconds: 100));
          }
          percent = data["percent_filled"];
          print(percent);
        }
      });
    });
  }

  void lid() {
    database.reference().child("State").update({"status": "$state"});
    print('$state');
    setState(() {
      if (state == "close") {
        state = "open";
      } else {
        state = "close";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
        title: Text('Wall-E'),
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          Header(),
          //TextButton(),
          ImageDesign(percent),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: getdata,
            tooltip: 'Refreshes the page to tell latest report',
            child: Icon(Icons.refresh),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            child: Text('$state'),
            onPressed: lid,
            tooltip: 'Refreshes the page to tell latest report',
          ),
        ],
      ),
    );
  }
}

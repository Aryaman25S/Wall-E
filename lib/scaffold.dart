import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:firebase_database/firebase_database.dart';
import './header.dart';
//import './lid_button.dart';
import './image_design.dart';
//import 'dart:async';
//import 'dart:convert';
//import 'package:http/http.dart' as http;

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
  bool change = false;

  void getdata() {
    database.reference().child("State").once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> data = snapshot.value;
      percent = data["percent_filled"];
      print(percent);
    });
    setState(() {});
  }

  void lid() {
    database.reference().child("State").update({"status": "$state"});
    print('$state');
    setState(() {
      if (change == true) {
        state = "open";
        change = false;
      } else {
        state = "close";
        change = true;
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
            //child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

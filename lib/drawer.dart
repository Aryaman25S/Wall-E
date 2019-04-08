import 'package:flutter/material.dart';
import './switch_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Bin-1',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            accountEmail: Text(
              'BinAdress',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/walleve.png'),
              ),
            ),
          ),
          ListTile(
            title: Text('Lid Settings'),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SwitchPage())),
          ),
          Divider(),
          ListTile(
            title: Text('Close'),
            trailing: Icon(Icons.cancel),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

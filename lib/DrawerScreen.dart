// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DrawerScreen(),
  ));
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Durlav Parajuli"),
            accountEmail: Text("mail@durlavparajuli.com.np"),
            currentAccountPicture: CircleAvatar(),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Email"),
            subtitle: Text("Noob"),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Info",
    home: appInfo(),
  ));
}

class appInfo extends StatelessWidget {
  const appInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "Hello World",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.teal,
          fontSize: 30,
        ),
      ),
    );
  }
}

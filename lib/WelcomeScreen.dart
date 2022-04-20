// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:likhitapp/DrawerScreen.dart';
import 'package:likhitapp/ExamScreen.dart';
import 'package:likhitapp/QuestionScreen.dart';

void main() {
  runApp(const MaterialApp(
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("लिखित एप"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "प्रश्न उत्तर",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "परीक्षा दिनुहोस्",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "ट्रायल​",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "प्रश्न उत्तर",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "परीक्षा दिनुहोस्",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "ट्रायल​",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "प्रश्न उत्तर",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "परीक्षा दिनुहोस्",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamScreen()));
                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        )
                      ],
                    ),
                    width: 90,
                    height: 90,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "ट्रायल​",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: DrawerScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
        backgroundColor: Colors.red,
      ),
    );
  }
}

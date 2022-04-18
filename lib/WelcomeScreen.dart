// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:likhitapp/DrawerScreen.dart';
import 'package:likhitapp/ExamScreen.dart';

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
        title: Text("Likhit App"),
        backgroundColor: Colors.teal,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
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
              onTap: () {},
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                    "https://p.kindpng.com/picc/s/242-2423250_exam-png-transparent-image-exam-png-png-download.png",
                  )),
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
                    style: TextStyle(color: Color.fromARGB(255, 14, 12, 12)),
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

// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers, avoid_print,, library_prefixes, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:likhitapp/finalJsonParse.dart';
import 'package:flutter/services.dart' as rootBundle;

void main() {
  runApp(const MaterialApp(
    title: "ExamScreen",
    home: ExamScreen(),
  ));
}

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<FinalJsonData>;

          return ListView.builder(
            itemCount: items != null ? items.length : 0,
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 223, 108, 108),
                            borderRadius: BorderRadius.circular(20)),
                        width: 20,
                        height: 20,
                        child: const Text(
                          "  Time Section ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20)),
                        width: 20,
                        height: 200,
                        child: Text(
                          (items[index].index.toString()),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          BoxDecoration(
                            backgroundBlendMode: BlendMode.clear,
                          );
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)),
                          width: 20,
                          height: 60,
                          child: const Text(
                            "  A. ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20)),
                        width: 20,
                        height: 60,
                        child: const Text(
                          "  B. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20)),
                        width: 20,
                        height: 60,
                        child: const Text(
                          "  C. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20)),
                        width: 20,
                        height: 60,
                        child: const Text(
                          "  D. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          width: 100,
                          height: 60,
                          child: const Text(
                            "NEXT >>",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  Future<List<FinalJsonData>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/files/a_questions.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => FinalJsonData.fromJson(e)).toList();
  }
}

// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes, non_constant_identifier_names, unused_local_variable, unnecessary_null_comparison

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:likhitapp/WelcomeScreen.dart';
import 'package:likhitapp/allQuestions.dart';
import 'package:likhitapp/finalJsonParse.dart';
import 'package:flutter/services.dart' as rootBundle;

void main() {
  runApp(MaterialApp(
    title: "QuestionScreen",
    home: QuestionScreen(),
  ));
}

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("प्रश्नको प्रकार हरु "),
          backgroundColor: Colors.teal,
        ),
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
                  return Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 32, bottom: 32, left: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => allQuestions()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              ("${items[index].index.toString()}. ${items[index].title.toString()}"),
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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

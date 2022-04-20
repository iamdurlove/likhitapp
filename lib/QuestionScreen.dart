// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes, non_constant_identifier_names, unused_local_variable, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:likhitapp/jsonParse.dart';
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
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          var items = data.data as List<Questions>;
          return ListView.builder(
            itemCount: items == null ? 0 : items.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        (items[index].question.toString()),
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (items[index].correctAnswerIndex.toString()),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<List<Questions>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/files/a_questions.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => Questions.fromJson(e)).toList();
  }
}

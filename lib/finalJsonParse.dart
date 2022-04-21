// To parse required this JSON data, do
//
//     final finalJsonData = finalJsonDataFromJson(jsonString);

import 'dart:convert';

List<FinalJsonData> finalJsonDataFromJson(String str) =>
    List<FinalJsonData>.from(
        json.decode(str).map((x) => FinalJsonData.fromJson(x)));

String finalJsonDataToJson(List<FinalJsonData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FinalJsonData {
  FinalJsonData({
    required this.index,
    required this.numberOfQuestionToAsk,
    required this.perQuestionMarks,
    required this.title,
    required this.questions,
  });

  final int index;
  final int numberOfQuestionToAsk;
  final int perQuestionMarks;
  final String title;
  final List<Question> questions;

  factory FinalJsonData.fromJson(Map<String, dynamic> json) => FinalJsonData(
        index: json["index"],
        numberOfQuestionToAsk: json["numberOfQuestionToAsk"],
        perQuestionMarks: json["perQuestionMarks"],
        title: json["title"],
        questions: List<Question>.from(
            json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "numberOfQuestionToAsk": numberOfQuestionToAsk,
        "perQuestionMarks": perQuestionMarks,
        "title": title,
        "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
      };
}

class Question {
  Question({
    required this.index,
    required this.question,
    required this.optionList,
    required this.correctIndex,
    required this.hasImage,
  });

  final int index;
  final String question;
  final List<OptionList> optionList;
  final int correctIndex;
  final bool hasImage;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        index: json["index"],
        question: json["question"],
        optionList: List<OptionList>.from(
            json["optionList"].map((x) => OptionList.fromJson(x))),
        correctIndex: json["correctIndex"],
        hasImage: json["hasImage"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "question": question,
        "optionList": List<dynamic>.from(optionList.map((x) => x.toJson())),
        "correctIndex": correctIndex,
        "hasImage": hasImage,
      };
}

class OptionList {
  OptionList({
    required this.index,
    required this.content,
  });

  final int index;
  final String content;

  factory OptionList.fromJson(Map<String, dynamic> json) => OptionList(
        index: json["index"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "content": content,
      };
}

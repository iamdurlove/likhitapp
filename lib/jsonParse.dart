// ignore_for_file: file_names

class Questions {
  String? question;
  int? correctAnswerIndex;
  String? correctAnswer;

  Questions({this.question, this.correctAnswerIndex, this.correctAnswer});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['title'];
    correctAnswerIndex = json['index'];
  }
}

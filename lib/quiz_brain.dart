import 'package:quizzler/question.dart';

class QuizBrain {
  int qNum = 0;

  final List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    if (qNum < _questions.length - 1) {
      qNum++;
    }
  }

  String getQuestionText() {
    return _questions[qNum].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[qNum].questionAnswer;
  }
}

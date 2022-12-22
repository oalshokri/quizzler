import 'package:quizzler/question.dart';

class QuizBrain {
  int _qNum = 0;

  final List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    if (_qNum < _questions.length - 1) {
      _qNum++;
    }
  }

  String getQuestionText() {
    return _questions[_qNum].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_qNum].questionAnswer;
  }

  bool isFinished() {
    if (_qNum >= _questions.length - 1) {
      print('no more');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qNum = 0;
  }
}

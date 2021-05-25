import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  double _percent = 0;
  int _scored = 0;

  List<Question> _questionBank = [
    Question('Solo leveling é um manwha maravilhoso', 1),
    Question('Artur já chorou lendo Tokyo Revengers', -1),
    Question('Artur ama gastar dinheiro com mulher', -1),
    Question('Sangue de goblin é azul', 0),
    Question('Artur queria estudar no IFPI por mais tempo', 0),
    Question('Artur ficaria no IFPI apenas pela comida do refeitório', 1),
    Question(
        'A melhor classe de Skyrim é guerreiro',
        -1),
    Question(
        'Se um pato perde a pata, ele fica manco',
        -1),
    Question(
        'Jabutis são bons animais de estimçação',
        1),
    Question(
        'O ovo veio primeiro que a galinha',
        -1),
    Question('Artur queria passar em todas as matérias sem esforço', -1),
    Question(
        'Chocolate dá dor de barriga no Artur',
        1),
    Question(
        'Artur copiou e colou esse código de algum lugar no Github',
        0),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void score(int scored) {
    _scored += scored;
    this._percent = (this._scored / this._questionBank.length) * 100;
  }

  String getPercent() {
    return this._percent.toStringAsFixed(2) + " %";
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  int getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    _scored = 0;
    _percent = 0;
  }
}

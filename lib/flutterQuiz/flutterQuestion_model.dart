class FlutterQues {
  final String flutQuestionText;
  final List<Answers> answerList;

  FlutterQues(this.flutQuestionText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<FlutterQues> getFlutterQues() {
  List<FlutterQues> list = [];
// question and answer.........

  list.add(FlutterQues(
    "Flutter owner is google..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));

  list.add(FlutterQues(
    "flutter built on dart......?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));

  list.add(FlutterQues(
    "Last two people prefer flutter then android..??",
    [
      Answers("False ", false),
      Answers("True ", true),
    ],
  ));

  list.add(FlutterQues(
    "Scaffold,material are widgets..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));
  list.add(FlutterQues(
    "column , container,  are parts of flutter...?",
    [
      Answers("true", true),
      Answers("false", false),
    ],
  ));
  list.add(FlutterQues(
    "you can create once android and IOS in flutter..?",
    [
      Answers("True", true),
      Answers("False", false),
    ],
  ));

  return list;
}

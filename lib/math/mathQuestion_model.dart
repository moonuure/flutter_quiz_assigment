class MathQuestions {
  final String mathQuesText;
  final List<Answers> answerList;

  MathQuestions(this.mathQuesText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<MathQuestions> getMathQues() {
  List<MathQuestions> list = [];
// question and answer.........

  list.add(MathQuestions(
    "The sum of 9+9 = 21 ..?",
    [
      Answers("true", false),
      Answers("false", true),
    ],
  ));

  list.add(MathQuestions(
    " the squire of 7 is......?",
    [
      Answers("90", false),
      Answers("78", false),
      Answers("43", false),
      Answers("49", true),
    ],
  ));

  list.add(MathQuestions(
    "the multiplication of 9*9 equalis to 99..??",
    [
      Answers("true ", false),
      Answers("False ", true),
    ],
  ));

  list.add(MathQuestions(
    "49 devide by 7 equalis to 7..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));
  list.add(MathQuestions(
    "math is first subject after language...?",
    [
      Answers("true", true),
      Answers("false", false),
    ],
  ));
  list.add(MathQuestions(
    "math stands for mathmatics..?",
    [
      Answers("True", true),
      Answers("False", false),
    ],
  ));

  return list;
}

class EngQuestions {
  final String engQuestionText;
  final List<Answers> answerList;

  EngQuestions(this.engQuestionText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<EngQuestions> getEnQuestions() {
  List<EngQuestions> list = [];
// question and answer.........

  list.add(EngQuestions(
    "English is the Best Language in the World..?",
    [
      Answers("true", false),
      Answers("false", true),
    ],
  ));

  list.add(EngQuestions(
    "You must know well english to learn everything..?",
    [
      Answers("agree", false),
      Answers("No agree", false),
      Answers("Strong agree", false),
      Answers("Not all", true),
    ],
  ));

  list.add(EngQuestions(
    "English pwople orginaly from diffrent countries..??",
    [
      Answers("true ", false),
      Answers("False ", true),
    ],
  ));

  list.add(EngQuestions(
    "egland locates in africa..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));
  list.add(EngQuestions(
    "egland is part of britain...?",
    [
      Answers("true", true),
      Answers("false", false),
    ],
  ));
  list.add(EngQuestions(
    "Egland won the worldCup 2023..?",
    [
      Answers("False", true),
      Answers("True", false),
    ],
  ));

  return list;
}

class Questions {
  final String questionText;
  final List<Answers> answerList;

  Questions(this.questionText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<Questions> getQuestions() {
  List<Questions> list = [];
// question and answer.........

  list.add(Questions(
    "when Somalia was found..?",
    [
      Answers("1700", false),
      Answers("1800", false),
      Answers("1900", false),
      Answers("1920", true),
    ],
  ));

  list.add(Questions(
    "where Somalia Locates...?",
    [
      Answers("Horn of africa", true),
      Answers("America", false),
      Answers("north of africa", false),
      Answers("All above", false),
    ],
  ));

  list.add(Questions(
    "who is the first Precident..?",
    [
      Answers("mohamed Siyad", false),
      Answers("Adan Abdulle ", true),
      Answers("mohamed Farmaajo", false),
      Answers("Hassan Shek m.", false),
    ],
  ));

  list.add(Questions(
    "Somalia have longest cost in africa..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));
  list.add(Questions(
    "Somalia orginally from agypt..?",
    [
      Answers("False", true),
      Answers("True", false),
    ],
  ));
  list.add(Questions(
    "Somalia won the worldCup 2000..?",
    [
      Answers("False", true),
      Answers("True", false),
    ],
  ));

  return list;
}

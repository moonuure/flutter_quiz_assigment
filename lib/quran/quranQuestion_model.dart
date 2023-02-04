class QuranQues {
  final String qurantQuestionText;
  final List<Answers> answerList;

  QuranQues(this.qurantQuestionText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<QuranQues> getQuranQues() {
  List<QuranQues> list = [];
// question and answer.........

  list.add(QuranQues(
    "longest ayat in the quran is..?",
    [
      Answers("Idaatayantum", true),
      Answers("leysa alal amaa", false),
      Answers("thumma nadar", false),
      Answers("baqarah", false),
    ],
  ));

  list.add(QuranQues(
    "smollest ayat in the quran is Thuma Nadar....?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));

  list.add(QuranQues(
    "The Holly Quran is 114 surah..??",
    [
      Answers("False ", false),
      Answers("True ", true),
    ],
  ));

  list.add(QuranQues(
    "The Holly Quran contains more than 6000 verses ..?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));
  list.add(QuranQues(
    "longest surah in the quran is baqarah...?",
    [
      Answers("true", true),
      Answers("false", false),
    ],
  ));
  list.add(QuranQues(
    "Quran starts surah alfatiha and end to surah annaas..?",
    [
      Answers("True", true),
      Answers("False", false),
    ],
  ));

  return list;
}

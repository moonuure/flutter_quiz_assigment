class MindTestQuestions {
  final String mTQuesText;
  final List<Answers> answerList;

  MindTestQuestions(this.mTQuesText, this.answerList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<MindTestQuestions> getMTQues() {
  List<MindTestQuestions> list = [];
// question and answer.........

  list.add(MindTestQuestions(
    "84% of people reading this will not find the the mistake in this A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z...?",
    [
      Answers("False", false),
      Answers("True", true),
    ],
  ));

  list.add(MindTestQuestions(
    " What occurs once in every minute, twice in every moment, yet never in a thousand years?......?",
    [
      Answers("The letter “M”.", true),
      Answers("The letter “T”.", false),
      Answers("The letter “Y”.", false),
      Answers("The letter “S”.", false),
      
     
    ],
  ));

  list.add(MindTestQuestions(
    "What flies without wings?..??",
    [
      Answers(" Away", false),
      Answers("Time ", true),
      Answers(" Sending", false),
      Answers(" Clock", false),
    ],
  ));

  list.add(MindTestQuestions(
    "What can you keep but cannot share and once you share it, you can’t keep it anymore?..?",
    [
      Answers("talking", false),
      Answers("my Data", false),
      Answers("my problems", false),
      Answers("Secret", true),
    ],
  ));
  list.add(MindTestQuestions(
    "What is greater than God, more evil than the devil, the poor have it, the rich need it, and if you eat it, you’ll die?...?",
    [
      Answers("Nothing", true),
      Answers("No understanding", false),
      Answers("Understand", false),
      Answers("all above", false),
    ],
  ));
  list.add(MindTestQuestions(
    "The more it dries, the wetter it gets. What is it?..?",
    [
      Answers("A Towel.", true),
      Answers("MNW", false),
      Answers("A Tony.", false),
      Answers("all above", false),
    ],
  ));

  return list;
}

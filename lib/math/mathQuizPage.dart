import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../math/mathQuestion_model.dart';
import 'package:google_fonts/google_fonts.dart';

class MathQuizQues extends StatefulWidget {
  MathQuizQues({super.key});

  @override
  State<MathQuizQues> createState() => _QuizPageState();
}

class _QuizPageState extends State<MathQuizQues> {
  final user = FirebaseAuth.instance.currentUser!;

  List<MathQuestions> questionList = getMathQues();

  int currentQIndex = 0;

  int score = 0;

  Answers? selectedAnswer;

  void SignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 142, 74),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "Quiz Questions",
                style: GoogleFonts.sanchez(
                    fontSize: 45, color: Color.fromARGB(255, 3, 142, 74)),
              ),
            ),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 3, 142, 74),
            ),
            _quizWidget(),
            _answersList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  _quizWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Question ${currentQIndex + 1}/${questionList.length.toString()}",
            style: GoogleFonts.saira(
              color: Color.fromARGB(255, 3, 142, 74),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 142, 74),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              questionList[currentQIndex].mathQuesText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }

  _answersList() {
    return Column(
      children: questionList[currentQIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answers answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: TextStyle(fontSize: 21),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Color.fromARGB(255, 3, 142, 74) : Colors.grey,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(
          isLastQuestion ? "Submit" : "Next",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 3, 142, 74),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Reset Quiz"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 3, 142, 74)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_quiz_assigment/quran/quranQuiz.dart';
import 'package:google_fonts/google_fonts.dart';
import '../imagepath/imagepath.dart';
import '../QuizPages/dashGrid.dart';
import '../somali/quizHome.dart';
import '../englsih/engQuizHome.dart';
import '../math/mathQuizPage.dart';
import '../flutterQuiz/flutterQuiz.dart';
import '../quran/quranQuiz.dart';
import '../mindTest/mtQuizPage.dart';

class QuizDash extends StatefulWidget {
  const QuizDash({
    super.key,
  });

  @override
  State<QuizDash> createState() => _QuizDashState();
}

class _QuizDashState extends State<QuizDash> {
  final user = FirebaseAuth.instance.currentUser!;

  void SignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: GoogleFonts.abel(fontSize: 40),
        ),
        backgroundColor: Color.fromARGB(255, 3, 142, 74),
        actions: [IconButton(onPressed: SignOut, icon: Icon(Icons.logout))],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MathQuizQues()));
              },
              child: DashGrid(
                dashQuizColor: Colors.green,
                quizIcon: Icon(
                  Icons.calculate,
                  size: 50,
                  color: Colors.white,
                ),
                quizName: "QUIZ ONE",
                subText: "Mathmatics",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizPage()));
              },
              child: DashGrid(
                dashQuizColor: Colors.red,
                quizIcon: Icon(Icons.language, size: 50, color: Colors.white),
                quizName: "QUIZ TWO",
                subText: "Somali",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnQuesQuiz()));
              },
              child: DashGrid(
                dashQuizColor: Colors.black,
                quizIcon: Icon(Icons.language, size: 50, color: Colors.white),
                quizName: "QUIZ THREE",
                subText: "English",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlutterQuizz()));
              },
              child: DashGrid(
                dashQuizColor: Colors.orange,
                quizIcon:
                    Icon(Icons.flutter_dash, size: 50, color: Colors.white),
                quizName: "QUIZ FOUR",
                subText: "flutter",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HollyQuranQuiz()));
              },
              child: DashGrid(
                dashQuizColor: Colors.purple,
                quizIcon: Icon(Icons.mosque, size: 50, color: Colors.white),
                quizName: "QUIZ FIVE",
                subText: "Quran",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MTQuizQues()));
              },
              child: DashGrid(
                dashQuizColor: Colors.teal,
                quizIcon: Icon(Icons.language, size: 50, color: Colors.white),
                quizName: "QUIZ SIX",
                subText: "Mind Test",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

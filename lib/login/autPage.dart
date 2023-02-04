import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../login/loginPage.dart';
import '../somali/quizHome.dart';
import '../login/ragisterPage.dart';
import '../login/toggalePage.dart';
import '../QuizPages/dashboard.dart';

class AurthPage extends StatelessWidget {
  const AurthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            // is user logged
            if (snapshot.hasData) {
              return QuizDash();
            }

            // or NOT logged
            else {
              return RegorLogPage();
            }
          }),
        ),
      ),
    );
  }
}

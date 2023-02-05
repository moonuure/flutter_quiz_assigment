import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../TBfields/textField.dart';
import '../TBfields/buttons.dart';
import '../QuizPages/dashboard.dart';

class MyLogin extends StatefulWidget {
  final Function() onTap;

  MyLogin({super.key, required this.onTap});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void SignUser() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      WrongMessage(e.code);
    }
  }

  void WrongMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 80,
        ),
        Center(
            child: Icon(
          Icons.lock,
          size: 100,
          color: Color.fromARGB(255, 3, 142, 74),
        )),
        SizedBox(
          height: 50,
        ),
        Center(
            child: Text(
          "Enter your Info",
          style: GoogleFonts.sail(
              fontSize: 25, color: Color.fromARGB(255, 0, 228, 118)),
        )),
        SizedBox(
          height: 30,
        ),
        MyTxtFields(
          controller: usernameController,
          hintText: 'Email',
          myTFIcons: Icon(Icons.email_outlined),
          obscoreText: false,
        ),
        SizedBox(
          height: 20,
        ),
        MyTxtFields(
          controller: passwordController,
          hintText: 'PassCode',
          myTFIcons: Icon(Icons.lock_outlined),
          obscoreText: true,
        ),
        SizedBox(
          height: 25,
        ),
        //loginButton........
        MyButton(
          onTap: SignUser,
          textOnButton: 'Login',
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create new Accont: ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            GestureDetector(
              onTap: widget.onTap,
              child: Text(
                'Register',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 142, 74),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}

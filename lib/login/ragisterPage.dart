import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../TBfields/textField.dart';
import '../TBfields/buttons.dart';

class RagisterPage extends StatefulWidget {
  final Function() onTap;

  RagisterPage({super.key, required this.onTap});

  @override
  State<RagisterPage> createState() => _RagisterPageState();
}

class _RagisterPageState extends State<RagisterPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final CofirmpasswordController = TextEditingController();

  void SigUpUser() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      if (passwordController.text == CofirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: usernameController.text, password: passwordController.text);
        Navigator.pop(context);
      } else {
        WrongMessage("Password not match");
      }
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              // icon
              Center(
                  child: Icon(
                Icons.lock,
                size: 100,
                color: Color.fromARGB(255, 3, 142, 74),
              )),
              SizedBox(
                height: 30,
              ),

              Text(
                'Create New User',
                style: GoogleFonts.sail(
                    fontSize: 30, color: Color.fromARGB(255, 7, 216, 115)),
              ),
              SizedBox(
                height: 30,
              ),

              // textField.....user

              MyTxtFields(
                controller: usernameController,
                myTFIcons: Icon(Icons.email_outlined),
                hintText: 'username',
                obscoreText: false,
              ),
              SizedBox(
                height: 25,
              ),
              //textfield......pass
              MyTxtFields(
                controller: passwordController,
                myTFIcons: Icon(Icons.lock_outlined),
                hintText: 'password',
                obscoreText: true,
              ),
              SizedBox(
                height: 10,
              ),
              //Confirm Password
              SizedBox(
                height: 20,
              ),
              //textfield......pass
              MyTxtFields(
                controller: CofirmpasswordController,
                myTFIcons: Icon(Icons.lock_outlined),
                hintText: 'Confirm password',
                obscoreText: true,
              ),
              SizedBox(
                height: 10,
              ),

              //forgetpass
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //loginButton........
              MyButton(
                onTap: SigUpUser,
                textOnButton: 'Sig Up',
              ),
              SizedBox(
                height: 25,
              ),
              //or conteniue with already acoount///
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                    )),
                    Text(
                      "Or continue with",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 3, 142, 74)),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'All ready have an Accont: ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login now',
                      style: TextStyle(
                          color: Color.fromARGB(255, 3, 142, 74),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'loginPage.dart';
import '../login/ragisterPage.dart';

class RegorLogPage extends StatefulWidget {
  const RegorLogPage({super.key});

  @override
  State<RegorLogPage> createState() => _RegorLogPageState();
}

class _RegorLogPageState extends State<RegorLogPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return MyLogin(onTap: togglePages);
    } else
      return RagisterPage(
        onTap: togglePages,
      );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashGrid extends StatelessWidget {
  final Color dashQuizColor;
  final Icon quizIcon;
  final String quizName;
  final String subText;

  DashGrid(
      {super.key,
      required this.dashQuizColor,
      required this.quizIcon,
      required this.quizName,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dashQuizColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          quizIcon,
          Text(
            quizName,
            style: GoogleFonts.roboto(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            subText,
            style: GoogleFonts.radley(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

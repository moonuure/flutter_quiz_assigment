import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../splashScreans/screantwo.dart';

class ScreanOne extends StatelessWidget {
  const ScreanOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image(
                height: 350,
                image: AssetImage('images/logo.png'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreanTwo()),
                );
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Get started',
                    style: GoogleFonts.sail(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 228, 118)),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Text(
            "you are going to test Quiz...",
            style: GoogleFonts.sevillana(
                fontSize: 40, color: Color.fromARGB(255, 0, 228, 118)),
          ),
        ),
        Container(
          child: Text(
            "Let's Go",
            style: GoogleFonts.sansita(
                fontSize: 30, color: Color.fromARGB(255, 0, 228, 118)),
          ),
        )
      ],
    );
  }
}

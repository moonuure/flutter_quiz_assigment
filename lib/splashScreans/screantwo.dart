import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login/loginPage.dart';
import '../login/autPage.dart';

class ScreanTwo extends StatelessWidget {
  const ScreanTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Fill your info",
                    style: GoogleFonts.sansita(
                        fontSize: 50, color: Color.fromARGB(255, 0, 228, 118)),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "before you start",
                    style: GoogleFonts.sansita(
                        fontSize: 30, color: Color.fromARGB(255, 0, 228, 118)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 34, top: 25, bottom: 25, right: 25),
                          child: Text(
                            "Take Care before you answering and read every Question  three times to select the correct One",
                            style: GoogleFonts.sanchez(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 0, 228, 118),
                elevation: 10,
              ),
            ),

            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AurthPage()),
                    );
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Let`s start',
                        style: GoogleFonts.sanchez(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/quiz-logo.png',
              width: 300,
              // height: 300,
              color: const Color.fromARGB(150, 255, 255, 255)),
          const SizedBox(height: 70),
          Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.play_arrow),
            label:
                const Text('Start Quiz', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

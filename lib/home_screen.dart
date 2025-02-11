import 'package:flutter/material.dart';
import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Icon(Icons.quiz_outlined, color: Colors.green.shade700, size: 100),
           const SizedBox(
              height: 20,
            ),
            Text(
              'Mury\'s Quiz',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onPrimaryFixedVariant
                  ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                // Show the question screen to start the game
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuestionScreen();
                    },
                  ),
                );
              },
              child: const Text('New Game'),
            ),
          ],
        ),
      ),
    );
  }
}

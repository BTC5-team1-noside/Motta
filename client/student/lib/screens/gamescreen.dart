import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Motta!")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://www.creativefabrica.com/wp-content/uploads/2020/08/25/Cute-Penguin-Illustration-Graphics-5116637-1-1-580x387.png"),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("GameStart")),
          ],
        ),
      ),
    );
  }
}

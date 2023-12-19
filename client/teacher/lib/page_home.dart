import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 40),
      title: const Text('Calendar'),
    );

    return Scaffold(
      appBar: appBar,
      body: const Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text('home')],
      )),
    );
  }
}

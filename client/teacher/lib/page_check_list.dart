import 'package:flutter/material.dart';

class PageCheckList extends StatelessWidget {
  const PageCheckList({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 40),
      title: const Text('持ち物登録'),
    );

    // final pushButton = ElevatedButton(
    //   onPressed: () => push(context),
    //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    //   child: const Text('next'),
    // );

    // final popButton = ElevatedButton(
    //   onPressed: () => back(context),
    //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    //   child: const Text('back'),
    // );

    return Scaffold(
      appBar: appBar,
      body: const Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("check_list")],
      )),
    );
  }
}

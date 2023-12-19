import 'package:flutter/material.dart';
import 'package:teacher/side_menu.dart';

class PageSettings extends StatelessWidget {
  const PageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 40),
      title: const Text('設定'),
    );
    // final popButton = ElevatedButton(
    //   onPressed: () => back(context),
    //   style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
    //   child: const Text('back'),
    // );

    const drawer = Drawer(
      child: SideMenu(),
    );

    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: const Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("settings")],
      )),
    );
  }
}

import 'package:flutter/material.dart'; //必要
import 'package:flutter_riverpod/flutter_riverpod.dart'; //#9_rivepod_状態管理
import 'package:flutter/foundation.dart'; //#13_BottomNavigationBar
import 'package:device_preview/device_preview.dart'; //#25_reponsive design

import 'package:teacher/page_Home.dart';
import 'package:teacher/page_check_list.dart';
import 'package:teacher/page_setting.dart';

main() {
  //アップバー
  final appBar = AppBar(
    backgroundColor: Colors.pink,
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 40),
    title: const Text('Motta'),
  );

  // 画面
  final scaffold = Scaffold(
    appBar: appBar,
    body: const Root(),
  );

  // アプリ
  final app = MaterialApp(home: scaffold);

  // プロバイダースコープでアプリを囲む
  final scope = ProviderScope(child: app);

  if (kIsWeb) {
    final devicePreview = DevicePreview(builder: (_) => scope);
    runApp(devicePreview);
  } else {
    runApp(scope);
  }
}

//BottomNavの初期設定
final indexProvider = StateProvider((ref) {
  return 0;
});

//BottomNavの状態管理（選択した画面へ移動）
class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int index = ref.watch(indexProvider);

    const items = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: '持ち物登録'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey.shade300,
      currentIndex: index,
      onTap: (index) {
        ref.read(indexProvider.notifier).state = index;
      },
    );

    const pages = [PageHome(), PageCheckList(), PageSettings()];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
    // return Scaffold(
    //   body: pages[index],
    //   bottomNavigationBar: bar,
    // );
  }
}

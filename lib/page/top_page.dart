import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CARD LIST'),
          actions: [
            const Tooltip(message: 'アイコンボタンをホバーした時に表示されるテキスト'),
            IconButton(
                onPressed: () => print('ルール追加画面に遷移するよ'),
                icon: const Icon(Icons.add))
          ],
        ),
        body: const Center(child: Text('ルールを一覧表示するよ!')),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('ルール追加画面に遷移するよ'),
          child: const Icon(Icons.add),
        ));
  }
}

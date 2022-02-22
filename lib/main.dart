import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IF THEN CARD',
        home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('CARD LIST'),
            actions: [
              Tooltip(message: 'アイコンボタンをホバーした時に表示されるテキスト'),
              IconButton(onPressed: () => print('ルール追加画面に遷移するよ'), icon: Icon(Icons.add))
            ],
        ),
        body: Center(child: Text('ルールを一覧表示するよ')),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print('ルール追加画面に遷移するよ'),
            child: const Icon(Icons.add),
        )
    );
  }
}

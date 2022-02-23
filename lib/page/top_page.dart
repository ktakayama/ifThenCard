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
        body: const RuleListWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('ルール追加画面に遷移するよ'),
          child: const Icon(Icons.add),
        ));
  }
}

class RuleListWidget extends StatelessWidget {
  const RuleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> rules = [
      'ビールが欲しくなったら => 炭酸水を飲む',
      '食べたくなったら => ナッツを食べる',
      'タバコが吸いたくなったら => ニコレスを吸う',
    ];

    return ListView.builder(
        itemCount: rules.length,
        itemBuilder: (context, index) {
          return const RuleWidget();
        });
  }
}

class RuleWidget extends StatelessWidget {
  const RuleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onLongPress: () => {print('長押しで削除するよ')},
        child: Column(
          children: const [
            ListTile(
              title: Text('ビールが欲しくなったら',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.subdirectory_arrow_right),
              title: Text('炭酸水を飲む'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:if_then_card/page/add_page.dart';

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
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPage()),
                    ),
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
    final List<Map<String, String>> rules = [
      {'situation': 'ビールが欲しくなったら', 'action': '炭酸水を飲む'},
      {'situation': '食べたくなったら', 'action': 'ナッツを食べる'},
      {'situation': 'タバコが吸いたくなったら', 'action': 'ニコレスを吸う'},
    ];

    final List<Color> colors = [
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.greenAccent,
      Colors.redAccent,
    ];

    return ListView.builder(
        itemCount: rules.length,
        itemBuilder: (context, index) {
          return RuleWidget(
            situation: rules[index]['situation']!,
            action: rules[index]['action']!,
            conditionColor: colors[index % colors.length],
          );
        });
  }
}

class RuleWidget extends StatelessWidget {
  // finalを変数に指定し、コンストラクタでの初期値設定後は値を変更できないようにしています
  final String situation;
  final String action;
  final Color conditionColor;

  // コンストラクタは、引数をブラケット({})で囲むことによって、名前付きパラメーターを受け取ることができます
  // パラメータのキー名と同名のインスタンス変数を記述すると、インスタンス変数への代入も省略することができます
  const RuleWidget(
      {Key? key,
      required this.situation,
      required this.action,
      required this.conditionColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onLongPress: () => {print('長押しで削除するよ')},
        child: Column(
          children: [
            ListTile(
              title: Text(situation,
                  style: const TextStyle(fontSize: 20, color: Colors.white)),
              tileColor: conditionColor,
            ),
            ListTile(
              leading: const Icon(Icons.subdirectory_arrow_right),
              title: Text(action),
            )
          ],
        ),
      ),
    );
  }
}

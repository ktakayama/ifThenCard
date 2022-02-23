import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Rule'),
      ),
      body: const Center(child: Text('ルール追加フォームを表示するよ')),
    );
  }
}

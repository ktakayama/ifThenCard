import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:if_then_card/model/rules.dart';
import 'package:if_then_card/page/top_page.dart';

final rulesProvider = ChangeNotifierProvider(
  (ref) => Rules(rules: []),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IF THEN CARD',
      home: TopPage(),
    );
  }
}

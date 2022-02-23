import 'package:flutter/material.dart';
import 'package:if_then_card/page/top_page.dart';

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

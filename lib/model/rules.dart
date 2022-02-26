import 'package:flutter/foundation.dart';
import 'package:if_then_card/model/rule.dart';

class Rules extends ChangeNotifier {
  List<Rule> rules = [];

  Rules({required this.rules});

  void add({required String situation, required String action}) {
    rules.add(Rule(situation: situation, action: action));
    notifyListeners();
  }

  void delete(Rule target) {
    rules.remove(target);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:if_then_card/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Rule'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: RuleForm(),
        ));
  }
}

class RuleForm extends StatefulWidget {
  const RuleForm({Key? key}) : super(key: key);

  @override
  _RuleFormState createState() => _RuleFormState();
}

class _RuleFormState extends State<RuleForm> {
  final _formKey = GlobalKey<FormState>();

  String? inputValid(value) {
    if (value == null || value.isEmpty) {
      return '入力してください';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    String situationText = '';
    String actionText = '';

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "条件",
              hintText: "朝起きたら",
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (text) {
              situationText = text;
            },
            validator: (value) => inputValid(value),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "行動",
              hintText: "水を飲む",
            ),
            textAlign: TextAlign.center,
            onChanged: (text) {
              actionText = text;
            },
            validator: (value) => inputValid(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('登録しました')));
                    context
                        .read(rulesProvider)
                        .add(situation: situationText, action: actionText);
                    Navigator.pop(context);
                  }
                },
                child: const Text("Submit")),
          )
        ],
      ),
    );
  }
}

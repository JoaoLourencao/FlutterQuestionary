import 'package:flutter/material.dart';

import 'awnser.dart';
import 'question.dart';

class Questionary extends StatelessWidget {
  final void Function() response;
  final int selected;
  final List<String> responses;
  final List<Map<String, dynamic>> questions;

  Questionary({
    required this.responses,
    required this.response,
    required this.questions,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[selected]['texto']),
        ...responses.map((e) => Awnser(e, response)).toList()
      ],
    );
  }
}

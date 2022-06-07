import 'package:cursoflutter/awnser.dart';
import 'package:flutter/material.dart';

import 'question.dart';

class Questionary extends StatelessWidget {
  final void Function(int) response;
  final void Function() resetForm;
  final int selected;
  final List<Map<String, dynamic>> questions;

  Questionary({
    required this.response,
    required this.questions,
    required this.selected,
    required this.resetForm,
  });

  bool get haveSelected {
    return selected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> responses =
        haveSelected ? questions[selected]['respostas'] : [];
    return Column(
      children: [
        Question(questions[selected]['texto']),
        ...responses.map((resp) {
          return Awnser(
            resp['texto'].toString(),
            () => response(int.parse(resp['pontos'].toString())),
          );
        }).toList()
      ],
    );
  }
}

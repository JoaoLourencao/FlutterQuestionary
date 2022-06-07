import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './questionary.dart';
import './result.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _selected = 0;
  var _totalScore = 0;
  final List<Map<String, dynamic>> _questions = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontos': 10},
        {'texto': 'Vermelho', 'pontos': 8},
        {'texto': 'Verde', 'pontos': 2},
        {'texto': 'Branco', 'pontos': 5},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontos': 3},
        {'texto': 'Cobra', 'pontos': 9},
        {'texto': 'Elefante', 'pontos': 1},
        {'texto': 'Leão', 'pontos': 10},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontos': 10},
        {'texto': 'João', 'pontos': 10},
        {'texto': 'Leo', 'pontos': 1},
        {'texto': 'Pedro', 'pontos': 7},
      ],
    }
  ];

  bool get haveSelected {
    return _selected < _questions.length;
  }

  void _response(int pontos) {
    if (haveSelected) {
      setState(() {
        _selected++;
        _totalScore += pontos;
      });
    }
  }

  void _resetForm() {
    setState(() {
      _selected = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions App'),
          ),
          body: haveSelected
              ? Questionary(
                  resetForm: _resetForm,
                  response: _response,
                  questions: _questions,
                  selected: _selected)
              : Result(
                  finalScore: _totalScore,
                  resetForm: _resetForm,
                )),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}

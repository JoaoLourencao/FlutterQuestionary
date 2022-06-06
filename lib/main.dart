import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './awnser.dart';
import './question.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _selected = 0;

  void _response() {
    setState(() {
      _selected++;
    });
    print(_selected);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> questions = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      }
    ];

    List<Widget> responses = [];

    for (var textResp in questions[_selected]['respostas']) {
      responses.add(Awnser(textResp, _response));
      print(textResp);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('teste'),
        ),
        body: Column(
          children: [Question(questions[_selected]['texto']), ...responses],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}

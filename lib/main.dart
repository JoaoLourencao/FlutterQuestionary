import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './awnser.dart';
import './question.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _selected = 0;
  final List<Map<String, dynamic>> _questions = const [
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

  bool get haveSelected {
    return _selected < _questions.length;
  }

  void _response() {
    if (haveSelected) {
      setState(() {
        _selected++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses =
        haveSelected ? _questions[_selected]['respostas'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions App'),
        ),
        body: haveSelected
            ? Column(
                children: [
                  Question(_questions[_selected]['texto']),
                  ...responses.map((e) => Awnser(e, _response)).toList()
                ],
              )
            : Center(
                child: Text(
                'Congrats!',
                style: TextStyle(fontSize: 30, color: Colors.green),
              )),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}

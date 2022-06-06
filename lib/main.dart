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
    final List<String> questions = [
      'What`s your name?',
      'What`s your favorite color?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('teste'),
        ),
        body: Column(
          children: [
            Question(questions[_selected]),
            Awnser('awnser 1', _response),
            Awnser('awnser 2', _response),
            Awnser('awnser 3 ', _response),
          ],
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

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final void Function() resetForm;

  Result({
    required this.finalScore,
    required this.resetForm,
    Key? key,
  }) : super(key: key);

  String get resultText {
    if (finalScore < 5)
      return 'try again!';
    else if (finalScore < 10)
      return 'good job!';
    else
      return 'nice work!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          ),
        ),
        FlatButton(
          onPressed: resetForm,
          child: Text(
            'teste',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}

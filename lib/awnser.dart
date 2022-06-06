import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  Awnser(this.text, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(text),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: onSelected),
    );
  }
}

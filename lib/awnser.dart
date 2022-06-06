import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {
  final String text;
  final void Function() onSelected;
  const Awnser(this.text, this.onSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(text),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: onSelected),
    );
  }
}

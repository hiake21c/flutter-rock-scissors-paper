import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/enum_values.dart';
import 'input_button.dart';

class UserInputInterface extends StatelessWidget {
  final bool isDone;
  final Choice? userChoice;
  final Function(Choice) callback;

  const UserInputInterface({required this.isDone, required this.callback, required this.userChoice, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: InputButton(userChoice, 80)),
          const Expanded(child: SizedBox.shrink())
        ],
      );
    }
    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(Choice) callback) {
    return Choice.values
        .map((choice) => Expanded(
      child: InkWell(
        onTap: () => callback.call(choice),
        child: InputButton(choice, 80),
      ),
    ))
        .toList();
  }
}
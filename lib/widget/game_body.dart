
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_rock_scissors_paper/widget/result.dart';
import 'package:flutter_rock_scissors_paper/widget/user_input_interface.dart';

import '../common/enum_values.dart';
import 'cpu_screen.dart';

class GameBody extends StatefulWidget {

  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  Choice? _userChoice;
  late Choice _cpuChoice;

  @override
  void initState() {
    super.initState();
    isDone = false;
    _userChoice = null;
    setCpuChoice();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuScreen(isDone: isDone, cpuChoice: _cpuChoice)),
        Expanded(child: ResultScreen(isDone: isDone, callback: reset, result: getResult())),
        Expanded(
            child: UserInputInterface(isDone: isDone, callback: setUserChoice, userChoice: _userChoice)),
      ],
    );  }

  void setCpuChoice() {
    final random = Random();
    _cpuChoice = Choice.values[random.nextInt(3)];
  }

  void setUserChoice(Choice userChoice) {
    setState(() {
      isDone = true;
      _userChoice = userChoice;
    });
  }

  Result getResult() {
    if (_userChoice == null) {
      return Result.None;
    }

    switch (_userChoice!) {
      case Choice.Rock:
        switch (_cpuChoice) {
          case Choice.Rock:
            return Result.Draw;
          case Choice.Scissors:
            return Result.Win;
          case Choice.Paper:
            return Result.Lose;
        }
      case Choice.Scissors:
        switch (_cpuChoice) {
          case Choice.Rock:
            return Result.Lose;
          case Choice.Scissors:
            return Result.Draw;
          case Choice.Paper:
            return Result.Win;
        }
      case Choice.Paper:
        switch (_cpuChoice) {
          case Choice.Rock:
            return Result.Win;
          case Choice.Scissors:
            return Result.Lose;
          case Choice.Paper:
            return Result.Draw;
        }
    }
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuChoice();
    });
  }
}
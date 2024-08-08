import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rock_scissors_paper/common/enum_values.dart';

import 'input_button.dart';

class CpuScreen extends StatelessWidget {
  final bool isDone;
  final Choice? cpuChoice;

  const CpuScreen({required this.isDone, required this.cpuChoice, super.key});

  @override
  Widget build(BuildContext context) {
    return getCpuInput();
  }

  Widget getCpuInput() {
    if (isDone) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputButton(cpuChoice, 120),
            Text('CPU',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none)),
          ],
        ),
      );
    }
    return const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/enum_values.dart';
import '../main.dart';

class ResultScreen extends StatelessWidget {
  final bool isDone;
  final Result result;
  final VoidCallback callback;

  const ResultScreen({required this.isDone, required this.callback, required this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(children: [Center(child: Text(result.displayString , style: TextStyle(fontSize: 20, color: Colors.black, decoration: TextDecoration.none))),
        const SizedBox(height: 8),
        TextButton(
          child: const Text('Try again', style: TextStyle(fontSize: 24),),
          onPressed: () => callback.call(),
        )
      ]);;
    }

    return const Center(
      child: Text(
        'Please select one of the following:\nRock, Scissors, Paper',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),
      ),
    );
  }
}

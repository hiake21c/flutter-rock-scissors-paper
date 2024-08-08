import 'package:flutter/material.dart';
import 'package:flutter_rock_scissors_paper/widget/game_body.dart';

void main() {
  runApp(MaterialApp(
    title: 'Rock Scissors Papar',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Rock, Scissors, Paper'),
      ),
      body: const GameBody(),
    ),
  )
  );
}
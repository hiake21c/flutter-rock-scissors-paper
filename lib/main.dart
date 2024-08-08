import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Rock Scissors Papar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Body(),
    )
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Placeholder()),
        Expanded(child: Placeholder()),
        Expanded(child: Placeholder()),
      ],
    );
  }
}


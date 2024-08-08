import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rock_scissors_paper/common/enum_values.dart';

class InputButton extends StatelessWidget {
  final Choice? choice;
  final double? size;

  const InputButton(this.choice, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      width: size, // Fixed width
      height: size, // Fixed height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Center(
        child: Image.asset(
          choice?.imagePath ?? '',
          width: size! * 0.6,
          height: size! * 0.6,
        ),
      ),
    );
  }
}
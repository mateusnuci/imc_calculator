import 'package:flutter/material.dart';
import 'package:negligencia/consts.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  const CustomCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: activeCardColour,
        borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}
import 'package:negligencia/constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  final void Function(double)? onChanged;
  final int value;
  const SliderAltura({super.key, this.onChanged, required this.value});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              '$value',
              style: numberTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          value: value.toDouble(),
          onChanged: onChanged,
        )
      ],
    );
  }
}

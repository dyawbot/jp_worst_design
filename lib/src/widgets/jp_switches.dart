import 'package:flutter/material.dart';

class JpSwitches extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  // final

  const JpSwitches({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(

        // activeColor: activeColor,

        value: value,
        onChanged: onChanged);
  }
}

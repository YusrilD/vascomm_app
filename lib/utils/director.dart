import 'package:flutter/material.dart';

class SpacerWidth extends StatefulWidget {
  double? val;

  SpacerWidth(this.val, {Key? key}) : super(key: key);

  @override
  State<SpacerWidth> createState() => _SpacerWidthState();
}

class _SpacerWidthState extends State<SpacerWidth> {
  @override
  Widget build(BuildContext context) => SizedBox(
        width: widget.val,
      );
}

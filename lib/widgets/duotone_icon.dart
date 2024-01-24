import 'package:flutter/material.dart';

typedef DuotoneIconData = (IconData, IconData);

class DuotoneIcon extends StatelessWidget {
  final DuotoneIconData icon;
  final Color? color;
  // final int? quarterTurns;
  final double opacity;
  // final double? percentage;

  const DuotoneIcon(this.icon, {super.key, this.color, this.opacity = 0.2});

  @override
  Widget build(BuildContext context) =>
      Stack(alignment: AlignmentDirectional.center, children: [
        Opacity(opacity: opacity, child: Icon(icon.$1, color: color)),
        Icon(icon.$2, color: color),
      ]);
}

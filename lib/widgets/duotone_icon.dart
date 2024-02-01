import 'package:flutter/material.dart';

typedef DuotoneIconData = (IconData, IconData);

// TODO: Add filled duotone icon constructor with direction and percentage parameters.
class DuotoneIcon extends StatelessWidget {
  final DuotoneIconData icon;
  final Color? color;
  final double angle;
  final double opacity;

  const DuotoneIcon(this.icon,
      {super.key, this.color, this.angle = 0, this.opacity = 0.2});

  @override
  Widget build(BuildContext context) => RotationTransition(
        turns: AlwaysStoppedAnimation(angle / 360),
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Opacity(opacity: opacity, child: Icon(icon.$1, color: color)),
          Icon(icon.$2, color: color),
        ]),
      );
}

import 'package:flutter/material.dart';

typedef DuotoneIconData = ({IconData foreground, IconData background});

class DuotoneIcon extends StatelessWidget {
  final DuotoneIconData icon;
  final Color? color;
  final double? size;
  final double angle;
  final double opacity;
  final double heightFactor, widthFactor;
  final EdgeInsetsGeometry margin;
  final AlignmentGeometry alignment;
  final BorderRadiusGeometry borderRadius;

  const DuotoneIcon(this.icon,
      {super.key,
      this.color,
      this.size,
      this.angle = 0,
      this.opacity = 0.2,
      this.margin = EdgeInsets.zero})
      : heightFactor = 1.0,
        widthFactor = 1.0,
        alignment = Alignment.center,
        borderRadius = BorderRadius.zero;

  const DuotoneIcon.filled(this.icon,
      {super.key,
      this.color,
      this.size,
      this.angle = 0,
      this.opacity = 0.2,
      this.heightFactor = 1.0,
      this.widthFactor = 1.0,
      this.margin = EdgeInsets.zero,
      this.alignment = Alignment.center,
      this.borderRadius = BorderRadius.zero});

  @override
  Widget build(BuildContext context) => Padding(
        padding: margin,
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(angle / 360),
          child: Stack(alignment: alignment, children: [
            Opacity(
                opacity: opacity,
                child: Icon(icon.foreground, color: color, size: size)),
            ClipRRect(
              borderRadius: borderRadius,
              child: Align(
                  alignment: alignment,
                  heightFactor: heightFactor,
                  widthFactor: widthFactor,
                  child: Icon(icon.background, color: color, size: size)),
            ),
          ]),
        ),
      );
}

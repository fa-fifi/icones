import 'package:flutter/material.dart';

typedef DuotoneIconData = (IconData, IconData);

class DuotoneIcon extends StatelessWidget {
  final DuotoneIconData icon;

  const DuotoneIcon(this.icon, {super.key});

  @override
  Widget build(BuildContext context) =>
      Stack(alignment: AlignmentDirectional.center, children: [
        Opacity(
          opacity: 0.2,
          child: Icon(icon.$1, color: Colors.pink),
        ),
        Icon(icon.$2, color: Colors.pink),
      ]);
}

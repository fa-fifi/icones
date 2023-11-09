/// ### [MingCute Icons](https://www.mingcute.com)
/// v 2.88 (2,670 icons)
///
/// MingCute is a set of simple and exquisite open-source icon library.
/// Whether you're a designer or a developer, it's perfect for use in web and mobile.
library mingcute_icon;

import 'package:flutter/widgets.dart';

part 'mingcute_icon.dart';
part 'mingcute_icon_duotone.dart';

class _IconData extends IconData {
  const _IconData(int codePoint)
      : super(codePoint, fontFamily: 'MingCuteIcon', fontPackage: 'icones');
}

/// ## [MingCute Icons](https://www.mingcute.com)
/// #### MingCute Design
/// ###### v 2.88
library mingcute_icon;

import 'package:flutter/widgets.dart';

part 'mingcute_icon.dart';
part 'mingcute_icon_duotone.dart';

class _IconData extends IconData {
  const _IconData(int codePoint)
      : super(codePoint, fontFamily: 'MingCuteIcon', fontPackage: 'icones');
}

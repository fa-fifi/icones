/// ## [Carbon](https://carbondesignsystem.com/guidelines/icons/library)
/// #### IBM
/// ###### v 11.29.2
library carbon;

import 'package:flutter/material.dart';

part 'carbon.dart';

class _IconData extends IconData {
  const _IconData(int codePoint)
      : super(codePoint, fontFamily: 'Carbon', fontPackage: 'icones');
}
